import 'package:khkt2223/models/MyFiles.dart';
import 'package:flutter/material.dart';
import 'package:khkt2223/screens/info_components/color.dart';
import 'package:khkt2223/theme/colors/light_colors.dart';

import 'constants.dart';

class FileInfoCard extends StatelessWidget {
  const FileInfoCard({
    Key? key,
    required this.info,
  }) : super(key: key);

  final CloudStorageInfo info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Container(
          //       padding: EdgeInsets.all(defaultPadding * 0.75),
          //       height: 40,
          //       width: 40,
          //       decoration: BoxDecoration(
          //         color: info.color!.withOpacity(0.1),
          //         borderRadius: const BorderRadius.all(Radius.circular(10)),
          //       ),
          //       child: SvgPicture.asset(
          //         info.svgSrc!,
          //         color: info.color,
          //       ),
          //     ),
          //     //Icon(Icons.more_vert, color: Colors.white54)
          //   ],
          // ),
          Text(
            info.title!,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.white),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${info.numOfFiles} câu /",
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.white54),
              ),
              Text(
                info.totalStorage!,
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.white60),
              ),
            ],
          ),
          ProgressLine(
            color: info.color,
            percentage: info.percentage,
          ),
        ],
      ),
    );
  }
}

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    Key? key,
    this.color = kPrimaryColor,
    required this.percentage,
  }) : super(key: key);

  final Color? color;
  final int? percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
            color: color!.withOpacity(0.1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) => Container(
            width: constraints.maxWidth * (percentage! / 100),
            height: 5,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ],
    );
  }
}
