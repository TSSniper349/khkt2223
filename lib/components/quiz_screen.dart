import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khkt2223/controllers/question_controller.dart';

import 'package:khkt2223/components/body.dart';

class QuizScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Fluttter show the back button automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          FlatButton(
              onPressed: _controller.nextQuestion,
              child: const Text(
                "Bỏ qua",
                style: TextStyle(color: Colors.white70),
              )
          ),
        ],
      ),
      body: const Body(),
    );
  }
}
