import 'package:app_ui/app_ui.dart';
import 'package:favo_resto/survey/survey.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SurveyPage extends StatelessWidget {
  const SurveyPage({super.key});

  static Route<void> route = MaterialPageRoute(
    builder: (context) => const SurveyPage(),
  );
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SurveyCubit(),
      child: const SurveyView(),
    );
  }
}

class SurveyView extends StatelessWidget {
  const SurveyView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final showSurveyQuestions = context.select(
      (SurveyCubit cubit) => cubit.state,
    );
    return AppBackground.withOneLogo(
      child: AppScaffold(
        body: showSurveyQuestions ? const QuestionsPage() : const Onboarding(),
      ),
    );
  }
}
