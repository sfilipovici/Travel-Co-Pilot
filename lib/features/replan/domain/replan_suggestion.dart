class ReplanSuggestion {
  const ReplanSuggestion({
    required this.id,
    required this.title,
    required this.message,
    required this.when,
  });

  final String id;
  final String title;
  final String message;
  final DateTime when;
}
