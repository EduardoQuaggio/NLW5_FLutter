import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/home/home_state.dart';
import 'package:devquiz/shared/models/awnser_model.dart';
import 'package:devquiz/shared/models/question_model.dart';
import 'package:devquiz/shared/models/quiz_model.dart';
import 'package:devquiz/shared/models/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class HomeConttroller {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = UserModel(
      name: "Eduardo",
      photoUrl: "https://avatars.githubusercontent.com/u/61914122?v=4",
    );
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
        title: "NLW 5 Flutter",
        imagem: AppImages.blocks,
        questionAnswered: 1,
        level: Level.facil,
        questions: [
          QuestionModel(title: "Está Curtindo o Flutter", awnsers: [
            AwnserModel(title: "Sim", isRight: true),
            AwnserModel(title: "Não"),
            AwnserModel(title: "Talvez"),
            AwnserModel(title: "De jeito nehum")
          ]),
          QuestionModel(title: "Está Curtindo o Flutter", awnsers: [
            AwnserModel(title: "Sim", isRight: true),
            AwnserModel(title: "Não"),
            AwnserModel(title: "Talvez"),
            AwnserModel(title: "De jeito nehum")
          ])
        ],
      )
    ];
    state = HomeState.success;
  }
}
