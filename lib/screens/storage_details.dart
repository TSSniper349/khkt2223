import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';
import '../controllers/question_controller.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(14)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if ((_qnController.numOfCorrectAns/_qnController.questions.length*100).round()>=70) ...[
            Column(
              children: [
                Text(
                  "Nguy cơ thấp",
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.greenAccent),
                ),
                Text(
                  "Có vẻ con không có hoặc có nguy cơ rất ít bị mắc hội chứng khó đọc. Những việc con cần làm là hãy cố gắng phát huy khả năng đọc hiểu của mình nhưng cũng không được chủ quan nhé!",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: Colors.white70),
                ),
                SizedBox(height: kDefaultPadding),
                ElevatedButton(
                  onPressed: () => AudioPlayer().play(AssetSource('sounds/mucdonhe.mp3')),
                  child: const Icon(Icons.play_arrow),
                ),
              ],
            ),
          ]
          else if ((_qnController.numOfCorrectAns/_qnController.questions.length*100).round()>=50) ...[
            Column(
              children: [
                Text(
                  "Nguy cơ trung bình",
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.yellowAccent),
                ),
                Text(
                  "Con có khả năng bị mắc hội chứng khó đọc ở mức độ nhẹ. Con nên nói bố mẹ giao tiếp với con nhiều hơn để có thể giảm được tác động của bệnh lí về sau nhé!",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: Colors.white70),
                ),
                SizedBox(height: kDefaultPadding),
                ElevatedButton(
                  onPressed: () => AudioPlayer().play(AssetSource('sounds/mucdotrungbinh.mp3')),
                  child: const Icon(Icons.play_arrow),
                ),
              ],
            ),
          ]
          else ...[
            Column(
              children: [
                Text(
                  "Nguy cơ cao",
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.red),
                ),
                Text(
                  "Con có khả năng bị hội chứng khó đọc ở mức độ nặng. Bố mẹ nên đưa con tới gặp bác sĩ tâm lí để được kiểm tra kĩ hơn, từ đó có lộ trình điều trị hay được hỗ trợ một cách tốt nhất nhé!",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: Colors.white70),
                ),
                SizedBox(height: kDefaultPadding),
                ElevatedButton(
                  onPressed: () => AudioPlayer().play(AssetSource('sounds/mucdonang.mp3')),
                  child: const Icon(Icons.play_arrow),
                ),
              ],
            ),
            ],
          SizedBox(height: kDefaultPadding/2),
        ],
      ),
    );
  }
}
