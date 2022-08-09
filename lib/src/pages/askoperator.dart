// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kids/src/PDF/PdfGenerationScreen.dart';
import 'package:kids/src/Quiz/QuizQuestionScreen.dart';
import 'package:kids/src/customWidget/buttonIcon.dart';
import 'package:kids/src/customWidget/customAppBar.dart';


class AskOperator extends StatelessWidget {
  final isQuiz;

   AskOperator({ this.isQuiz});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: customAppBar(),
          ),
        ),
        body: SafeArea(
          child: Container(
            height: double.infinity,
            child: Center(
              child: SingleChildScrollView(
                physics: ScrollPhysics(parent: ScrollPhysics()),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ButtonIcon(
                          icon: FontAwesomeIcons.plus,
                          function: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    isQuiz ? QuizQuestionScreen(icon: FontAwesomeIcons.plus, operator: "sum") : PdfGenerationScreen(icon: FontAwesomeIcons.plus, operator: "sum"),
                              )
                          ),
                        ),
                        ButtonIcon(
                          icon: FontAwesomeIcons.minus,
                          function: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => isQuiz
                                    ? QuizQuestionScreen(icon: FontAwesomeIcons.minus, operator: "minus")
                                    : PdfGenerationScreen(icon: FontAwesomeIcons.minus, operator: "minus"),
                              )),
                        ),
                      ],
                    ),
                    SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ButtonIcon(
                          icon: FontAwesomeIcons.times,
                          function: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => isQuiz
                                    ? QuizQuestionScreen(icon: FontAwesomeIcons.times, operator: "multification")
                                    : PdfGenerationScreen(icon: FontAwesomeIcons.times, operator: "multification"),
                              )),
                        ),
                        ButtonIcon(
                          icon: FontAwesomeIcons.divide,
                          function: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => isQuiz
                                    ? QuizQuestionScreen(icon: FontAwesomeIcons.divide, operator: "divition")
                                    : PdfGenerationScreen(icon: FontAwesomeIcons.divide, operator: "divition"),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
