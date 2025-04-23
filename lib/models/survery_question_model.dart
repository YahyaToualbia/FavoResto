class SurveyQuestion {
  const SurveyQuestion({
    required this.text,
    required this.options,
    this.isMultiSelection = false,
  });

  final String text;
  final List<String> options;
  final bool isMultiSelection;
}
