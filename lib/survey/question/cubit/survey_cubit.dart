import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:favo_resto/models/survery_question_model.dart';

part 'survey_cubit_state.dart';

class SurveyQuestionCubit extends Cubit<SurveyQuestionState> {
  SurveyQuestionCubit(this.questions) : super(SurveyQuestionState());

  final List<SurveyQuestion> questions;

  void toggleOption(int optionIndex) {
    final questionIndex = state.currentQuestionIndex;
    final selections = List<int>.from(state.selections[questionIndex] ?? []);
    if (questions[questionIndex].isMultiSelection) {
      if (selections.contains(optionIndex)) {
        selections.remove(optionIndex);
      } else {
        selections.add(optionIndex);
      }
    } else {
      selections
        ..clear()
        ..add(optionIndex);
    }

    final newSelection = Map<int, List<int>>.from(state.selections)
      ..[questionIndex] = selections;
    final newState = state.copyWith(selections: newSelection);
    emit(newState);
  }

  void onNext() {
    if (state.canProceed && state.currentQuestionIndex < questions.length - 1) {
      final newQuestionIndex = state.currentQuestionIndex + 1;
      final newVisitedQuestionsIndexes = Set<int>.from(
        state.visitedQuestionsIndexes,
      )..add(newQuestionIndex);

      final newState = state.copyWith(
        currentQuestionIndex: newQuestionIndex,
        visitedQuestionsIndexes: newVisitedQuestionsIndexes,
      );
      emit(newState);
    }
  }

  void onPrevious() {
    if (state.currentQuestionIndex > 0) {
      final newVisitedQuestionsIndexes = Set<int>.from(
        state.visitedQuestionsIndexes,
      )..remove(state.currentQuestionIndex);

      final newState = state.copyWith(
        currentQuestionIndex: state.currentQuestionIndex - 1,
        visitedQuestionsIndexes: newVisitedQuestionsIndexes,
      );
      emit(newState);
    }
  }

  void onSubmit() {}
}
