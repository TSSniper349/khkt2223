import 'package:get/get.dart';
import 'package:khkt2223/controllers/question_controller.dart';
import 'package:khkt2223/file_info_card.dart';
import 'package:khkt2223/models/MyFiles.dart';
import 'package:khkt2223/responsive.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    QuestionController _qnController = Get.put(QuestionController());
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Đánh giá sơ bộ",
              style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.white),
            ),
            // ElevatedButton.icon(
            //   style: TextButton.styleFrom(
            //     padding: EdgeInsets.symmetric(
            //       horizontal: kDefaultPadding * 1.5,
            //       vertical:
            //           kDefaultPadding / (Responsive.isMobile(context) ? 2 : 1),
            //     ),
            //   ),
            //   onPressed: () {},
            //   icon: Icon(Icons.add),
            //   label: Text("Add New"),
            // ),
          ],
        ),
        SizedBox(height: kDefaultPadding),
        Responsive(
          mobile: FileInfoCardGridView(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width < 650 && _size.width > 350 ? 1.3 : 1,
          ),
          tablet: FileInfoCardGridView(),
          desktop: FileInfoCardGridView(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          ),
        ),
        SizedBox(height: kDefaultPadding*6),
        Row(
          children: [
            Text(
              "Tỉ lệ chính xác",
              style: Theme.of(context).textTheme.headline4!.copyWith(color: kSecondaryColor),
            ),
            SizedBox(width: kDefaultPadding*5),
            Text(
              "${(_qnController.numOfCorrectAns/_qnController.questions.length*100).round()}%",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: kSecondaryColor),
            ),
          ],
        ),
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: kDefaultPadding,
        mainAxisSpacing: kDefaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => FileInfoCard(info: demoMyFiles[index]),
    );
  }
}
