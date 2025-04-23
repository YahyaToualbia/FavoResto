import 'package:bloc/bloc.dart';

class SurveyCubit extends Cubit<bool> {
  SurveyCubit() : super(false);

  void onShowSurveyQuestionPage({required bool show}) => emit(show); 
}
