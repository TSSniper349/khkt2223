import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khkt2223/controllers/question_controller.dart';
import 'package:khkt2223/models/Questions.dart';

import '../constants.dart';
import 'option.dart';

class QuestionCard2 extends StatelessWidget {
  const QuestionCard2({
    Key? key,
    // it means we have to pass this
    required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Colors.white70),
          ),
          const SizedBox(height: kDefaultPadding * 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            ...List.generate(
              question.options.length,
                  (index) => Option(
                index: index,
                text: question.options[index],
                press: () => _controller.checkAns(question, index),
              ),
            ),
          ],
          ),
        ],
      ),
    );
  }
}