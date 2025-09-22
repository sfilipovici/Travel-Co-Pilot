import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_copilot/features/onboarding/domain/onboarding_prefs.dart';
import 'package:travel_copilot/features/trip/domain/trip_repository.dart';

class OnboardingFlowPage extends ConsumerStatefulWidget {
  const OnboardingFlowPage({super.key});

  @override
  ConsumerState<OnboardingFlowPage> createState() => _OnboardingFlowPageState();
}

class _OnboardingFlowPageState extends ConsumerState<OnboardingFlowPage> {
  final _form = GlobalKey<FormState>();
  final _cityCtrl = TextEditingController(text: 'Vienna');
  DateTime _start = DateTime.now();
  int _days = 3;
  int _budget = 2;
  final Set<String> _interests = {'food', 'culture'};
  bool _loading = false;

  @override
  void dispose() {
    _cityCtrl.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_form.currentState!.validate()) return;

    setState(() => _loading = true);

    try {
      final repo = ref.read(tripRepositoryProvider);
      final prefs = OnboardingPrefs(
        city: _cityCtrl.text.trim(),
        startDate: DateTime(_start.year, _start.month, _start.day),
        days: _days,
        interests: _interests.toList(),
        budgetLevel: _budget,
      );

      final trip = await repo.generate(prefs);
      await repo.save(trip);

      ref.invalidate(tripRepositoryProvider);

      if (mounted) {
        context.go('/plan');
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to generate trip: $e')),
        );
      }
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome')),
      body: SafeArea(
        child: Form(
          key: _form,
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const Text(
                'Tell us about your trip',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _cityCtrl,
                decoration: const InputDecoration(
                  labelText: 'Destination city',
                  border: OutlineInputBorder(),
                ),
                validator: (v) =>
                    (v == null || v.trim().isEmpty) ? 'Enter a city' : null,
              ),
              const SizedBox(height: 12),
              _Labeled(
                label: 'Start date',
                child: Row(
                  children: [
                    Text(
                        '${_start.year}-${_start.month.toString().padLeft(2, '0')}-${_start.day.toString().padLeft(2, '0')}'),
                    const Spacer(),
                    TextButton(
                      onPressed: () async {
                        final picked = await showDatePicker(
                          context: context,
                          initialDate: _start,
                          firstDate:
                              DateTime.now().subtract(const Duration(days: 1)),
                          lastDate:
                              DateTime.now().add(const Duration(days: 365)),
                        );
                        if (picked != null) setState(() => _start = picked);
                      },
                      child: const Text('Pick'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              _Labeled(
                label: 'Days: $_days',
                child: Slider(
                  value: _days.toDouble(),
                  min: 1,
                  max: 14,
                  divisions: 13,
                  label: '$_days',
                  onChanged: (v) => setState(() => _days = v.round()),
                ),
              ),
              const SizedBox(height: 12),
              _Labeled(
                label: 'Budget',
                child: SegmentedButton<int>(
                  segments: const [
                    ButtonSegment(value: 1, label: Text('\$')),
                    ButtonSegment(value: 2, label: Text('\$\$')),
                    ButtonSegment(value: 3, label: Text('\$\$\$')),
                  ],
                  selected: {_budget},
                  onSelectionChanged: (s) => setState(() => _budget = s.first),
                ),
              ),
              const SizedBox(height: 12),
              _Labeled(
                label: 'Interests',
                child: Wrap(
                  spacing: 8,
                  children: [
                    for (final tag in const [
                      'nature',
                      'food',
                      'culture',
                      'nightlife',
                      'family',
                      'hiking'
                    ])
                      FilterChip(
                        label: Text(tag),
                        selected: _interests.contains(tag),
                        onSelected: (sel) {
                          setState(() {
                            if (sel) {
                              _interests.add(tag);
                            } else {
                              _interests.remove(tag);
                            }
                          });
                        },
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              FilledButton.icon(
                onPressed: _loading ? null : _submit,
                icon: const Icon(Icons.auto_awesome),
                label: Text(_loading ? 'Generating…' : 'Generate with AI'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Labeled extends StatelessWidget {
  const _Labeled({required this.label, required this.child});

  final String label;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
        const SizedBox(height: 6),
        child,
      ],
    );
  }
}
