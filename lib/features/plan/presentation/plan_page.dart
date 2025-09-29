import 'dart:core';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:travel_copilot/features/trip/presentation/plan_controller.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'dart:async';

class PlanPage extends ConsumerStatefulWidget {
  const PlanPage({super.key});

  @override
  ConsumerState<PlanPage> createState() => _PlanPageState();
}

class _PlanPageState extends ConsumerState<PlanPage> {
  final TextEditingController _locationController = TextEditingController();
  double _budget = 1000;
  String _currency = 'EUR';
  final List<String> _currencies = ['USD', 'EUR', 'GBP', 'RON'];

  DateTime? _startDate;
  DateTime? _endDate;

  final List<String> _categories = ['Food', 'History', 'Nature', 'Shopping'];
  final Set<String> _selectedCategories = {};

  Future<void> _pickDate({required bool isStart}) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: isStart
          ? (_startDate ?? DateTime.now())
          : (_endDate ??
                (_startDate ?? DateTime.now()).add(const Duration(days: 3))),
      firstDate: isStart ? DateTime.now() : (_startDate ?? DateTime.now()),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        if (isStart) {
          _startDate = picked;
          if (_endDate != null && _endDate!.isBefore(picked)) {
            _endDate = picked.add(const Duration(days: 1));
          }
        } else {
          _endDate = picked;
        }
      });
    }
  }

  int? _getDurationDays() {
    if (_startDate == null || _endDate == null) return null;
    return _endDate!.difference(_startDate!).inDays + 1;
  }

  Future<void> _generateItinerary(BuildContext context) async {
    final ctrl = ref.read(planControllerProvider.notifier);

    if (_locationController.text.isEmpty ||
        _startDate == null ||
        _endDate == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please complete all fields')),
      );
      return;
    }

    try {
      await ctrl.generateTrip(
        city: _locationController.text,
        startDate: _startDate!,
        endDate: _endDate!,
        budgetAmount: _budget.toInt(),
        currency: _currency,
        categories: _selectedCategories.toList(),
      );

      if (!mounted) return;
      context.go('/itineraries');
    } catch (e) {
      if (!mounted) return;
      final msg = e is DioException && e.response?.data is Map
          ? "Error at ${e.response?.data['stage']}: ${e.response?.data['error']}"
          : 'Failed to generate itinerary: $e';

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(msg), backgroundColor: Colors.redAccent),
      );
    }
  }

  Future<void> _openPlacesAutocomplete() async {
    final apiKey = dotenv.env['GOOGLE_API_KEY'];
    // REST-based Places Autocomplete: show a simple overlay with suggestions

    if (apiKey == null || apiKey.isEmpty) {
      // fall back to plain input
      final result = await showDialog<String>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Enter destination'),
          content: TextField(controller: _locationController),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, _locationController.text),
              child: const Text('OK'),
            ),
          ],
        ),
      );
      if (result != null) setState(() => _locationController.text = result);
      return;
    }

    // We'll show a simple bottom sheet with a debounced suggestions list.
    final cancelToken = CancelToken();
    final dio = Dio();
    final controller = TextEditingController(text: _locationController.text);
    Timer? debounce;
    var suggestions = <String>[];

    Future<void> fetchSuggestions(String input) async {
      if (input.isEmpty) return;
      try {
        final Response<dynamic> res = await dio.get(
          'https://maps.googleapis.com/maps/api/place/autocomplete/json',
          queryParameters: {'input': input, 'types': '(cities)', 'key': apiKey},
          cancelToken: cancelToken,
        );
        final data = res.data as Map<String, dynamic>;
        final preds = (data['predictions'] as List<dynamic>?) ?? [];
        suggestions = preds.map((p) => p['description'] as String).toList();
      } catch (e) {
        // ignore network errors
        suggestions = <String>[];
      }
    }

    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: StatefulBuilder(
            builder: (context, setModalState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextField(
                      controller: controller,
                      autofocus: true,
                      decoration: const InputDecoration(
                        hintText: 'Search city',
                      ),
                      onChanged: (v) {
                        debounce?.cancel();
                        debounce = Timer(
                          const Duration(milliseconds: 300),
                          () async {
                            await fetchSuggestions(v);
                            setModalState(() {});
                          },
                        );
                      },
                    ),
                  ),
                  if (suggestions.isEmpty)
                    const Padding(
                      padding: EdgeInsets.all(12),
                      child: Text('No suggestions'),
                    )
                  else
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: suggestions.length,
                      itemBuilder: (context, i) {
                        final s = suggestions[i];
                        return ListTile(
                          title: Text(s),
                          onTap: () {
                            Navigator.of(context).pop();
                            setState(() => _locationController.text = s);
                          },
                        );
                      },
                    ),
                ],
              );
            },
          ),
        );
      },
    );

    debounce?.cancel();
    cancelToken.cancel();
  }

  @override
  Widget build(BuildContext context) {
    final planState = ref.watch(planControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Plan your trip')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Where’s your next adventure?",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // ✅ Autocomplete field
            GestureDetector(
              onTap: _openPlacesAutocomplete,
              child: AbsorbPointer(
                child: TextField(
                  controller: _locationController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.location_on_outlined,
                      color: Color(0xFF6C63FF),
                    ),
                    hintText: 'Enter destination',
                    filled: true,
                    fillColor: Colors.white,
                    hintStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 14,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),

            GestureDetector(
              onTap: () => _pickDate(isStart: true),
              child: _DateCard(
                icon: Icons.calendar_today_outlined,
                text: _startDate == null
                    ? 'Start date'
                    : DateFormat('MMM d').format(_startDate!),
              ),
            ),
            const SizedBox(height: 12),

            GestureDetector(
              onTap: () => _pickDate(isStart: false),
              child: _DateCard(
                icon: Icons.calendar_month_outlined,
                text: _endDate == null
                    ? 'End date'
                    : DateFormat('MMM d').format(_endDate!),
              ),
            ),
            const SizedBox(height: 8),

            if (_getDurationDays() != null)
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 4),
                child: Text(
                  "Trip length: ${_getDurationDays()} days",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            const SizedBox(height: 20),

            // Budget
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Budget'),
                      Text('${_budget.toInt()} $_currency'),
                    ],
                  ),
                  Slider(
                    value: _budget,
                    min: 100,
                    max: 10000,
                    divisions: 100,
                    activeColor: const Color(0xFF6C63FF),
                    onChanged: (val) => setState(() => _budget = val),
                  ),
                  const SizedBox(height: 12),
                  DropdownButton<String>(
                    value: _currency,
                    items: _currencies
                        .map((c) => DropdownMenuItem(value: c, child: Text(c)))
                        .toList(),
                    onChanged: (val) => setState(() => _currency = val!),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: _categories.map((cat) {
                final selected = _selectedCategories.contains(cat);
                return ChoiceChip(
                  label: Text(cat),
                  selected: selected,
                  selectedColor: const Color(0xFF6C63FF).withOpacity(0.2),
                  labelStyle: TextStyle(
                    color: selected ? const Color(0xFF6C63FF) : Colors.black87,
                    fontWeight: selected ? FontWeight.bold : FontWeight.normal,
                  ),
                  onSelected: (_) {
                    setState(() {
                      if (selected) {
                        _selectedCategories.remove(cat);
                      } else {
                        _selectedCategories.add(cat);
                      }
                    });
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 40),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6C63FF),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: planState.isLoading
                    ? null
                    : () => _generateItinerary(context),
                icon: planState.isLoading
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                    : const Icon(Icons.auto_awesome, color: Colors.white),
                label: Text(
                  planState.isLoading ? 'Generating...' : 'Generate Itinerary',
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DateCard extends StatelessWidget {
  final IconData icon;
  final String text;
  const _DateCard({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(icon, size: 20),
          const SizedBox(width: 12),
          Text(text, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
