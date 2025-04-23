part of 'survey_cubit.dart';

class SurveyQuestionState extends Equatable {
  SurveyQuestionState({
    this.currentQuestionIndex = 0,
    Map<int, List<int>>? selections,
    Set<int>? visitedQuestionsIndexes,
  })  : selections = selections ?? {},
        visitedQuestionsIndexes = visitedQuestionsIndexes ?? {0};

  final int currentQuestionIndex;
  final Map<int, List<int>> selections;
  final Set<int> visitedQuestionsIndexes;

  bool get canProceed {
    final selected = selections[currentQuestionIndex] ?? [];
    return selected.isNotEmpty;
  }

  SurveyQuestionState copyWith({
    int? currentQuestionIndex,
    Map<int, List<int>>? selections,
    Set<int>? visitedQuestionsIndexes,
  }) {
    return SurveyQuestionState(
      currentQuestionIndex: currentQuestionIndex ?? this.currentQuestionIndex,
      selections: selections ?? this.selections,
      visitedQuestionsIndexes:
          visitedQuestionsIndexes ?? this.visitedQuestionsIndexes,
    );
  }

  @override
  List<Object?> get props => [
        currentQuestionIndex,
        selections,
        visitedQuestionsIndexes,
      ];
}
