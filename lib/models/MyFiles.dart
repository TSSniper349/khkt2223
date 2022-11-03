import 'package:flutter/material.dart';
import 'package:khkt2223/screens/info_components/color.dart';

class CloudStorageInfo {
  final String? svgSrc, title, totalStorage;
  final int? numOfFiles, percentage;
  final Color? color;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "Phát âm",
    numOfFiles: 3,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "5 câu",
    color: kPrimaryColor,
    percentage: 60,
  ),
  CloudStorageInfo(
    title: "Toán",
    numOfFiles: 4,
    svgSrc: "assets/icons/google_drive.svg",
    totalStorage: "5 câu",
    color: Color(0xFFFFA113),
    percentage: 80,
  ),
  CloudStorageInfo(
    title: "Đọc",
    numOfFiles: 2,
    svgSrc: "assets/icons/one_drive.svg",
    totalStorage: "5 câu",
    color: Color(0xFFA4CDFF),
    percentage: 40,
  ),
  CloudStorageInfo(
    title: "Ghi nhớ",
    numOfFiles: 4,
    svgSrc: "assets/icons/drop_box.svg",
    totalStorage: "5 câu",
    color: Color(0xFF007EE5),
    percentage: 80,
  ),
];
