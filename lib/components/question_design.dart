import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:khkt2223/controllers/question_controller.dart';
import 'package:khkt2223/components/question_card_2.dart';
import 'package:khkt2223/components/question_card_3.dart';
import 'question_card.dart';

class QuestionDesign extends StatelessWidget{
  final int index;
  const QuestionDesign({
    Key? key,
    required this.index
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    if(index==0 || index == 1 || index == 2)  return QuestionCard2(question: _questionController.questions[index]);
    if (index == 3) return QuestionCard3(question: _questionController.questions[index]);
    return QuestionCard(question: _questionController.questions[index]);
    //question: _questionController.questions[index]
  }
}