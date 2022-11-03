import 'package:flutter/material.dart';
import 'package:khkt2223/components/quiz_screen.dart';
import 'package:khkt2223/screens/tracking_page.dart';
import 'package:khkt2223/theme/colors/light_colors.dart';
import 'package:khkt2223/widgets/task_column.dart';
import 'package:khkt2223/widgets/active_project_card.dart';
import 'package:khkt2223/widgets/top_container.dart';
import 'package:khkt2223/screens/Searching.dart';
import 'package:khkt2223/screens/chatbot.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../components/score_screen.dart';
import '../constants.dart';
import '../main_screen.dart';

class HomePage extends StatelessWidget {
  Text subheading(String title) {
    return Text(
      title,
      style: const TextStyle(
          color: LightColors.kDarkBlue,
          fontSize: 30.0,
          fontWeight: FontWeight.w700,
          fontFamily: 'Poppins-Bold',
          letterSpacing: 1.2),
    );
  }

  static CircleAvatar calendarIcon() {
    return const CircleAvatar(
      radius: 25.0,
      backgroundColor: LightColors.kLavender,
      child: Icon(
        Icons.chat_bubble,
        size: 20.0,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TopContainer(
              height: 200,
              width: width,
              padding: const EdgeInsets.symmetric(
                  horizontal: 0, vertical: 0.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const <Widget>[
                        Icon(Icons.menu,
                            color: LightColors.kDarkBlue, size: 30.0),
                        Icon(Icons.search,
                            color: LightColors.kDarkBlue, size: 25.0),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircularPercentIndicator(
                            radius: 90.0,
                            lineWidth: 5.0,
                            animation: true,
                            percent: 0.75,
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: LightColors.kRed,
                            backgroundColor: LightColors.kDarkYellow,
                            center: const CircleAvatar(
                              backgroundColor: LightColors.kBlue,
                              radius: 35.0,
                              backgroundImage: AssetImage(
                                'assets/images/avatar.png',
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const <Widget>[
                              Text(
                                "Let's start",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 27.0,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                'Not all readers are leaders,\n but all leaders are readers.',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white54,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      color: Colors.transparent,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Chức năng',
                            textAlign: TextAlign.start,
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.white),
                          ),
                          const SizedBox(height: 15.0),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen()),
                                  );
                                  },
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      TaskColumn(
                                        icon: Icons.chat,
                                        iconBackgroundColor: LightColors.kRed,
                                        title: 'Kết nối bác sĩ',
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 15.0),
                                GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FilterNetworkListPage()),
                                  );
                                },
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      TaskColumn(
                                        icon: Icons.search,
                                        iconBackgroundColor: LightColors.kDarkYellow,
                                        title: 'Bài tập',
                                      ),
                                      const SizedBox(height: 15.0),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 25),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => QuizScreen()),
                                    );
                                  },
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      TaskColumn(
                                        icon: Icons.check,
                                        iconBackgroundColor: LightColors.kBlue,
                                        title: 'Kiểm Tra',
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 15.0),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MainScreen()),
                                    );
                                  },
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      TaskColumn(
                                        icon: Icons.report,
                                        iconBackgroundColor: LightColors.kGreen,
                                        title: 'Kết quả',
                                      ),
                                      const SizedBox(height: 15.0),
                                    ],

                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Tiến độ học tập',
                            textAlign: TextAlign.start,
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.white),
                          ),
                          const SizedBox(height: 5.0),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TrackingPage()),
                              );
                            },
                           child: Row(
                            children: <Widget>[
                              ActiveProjectsCard(
                                    cardColor: kSecondaryColor.withOpacity(0.25),
                                    loadingPercent: 0.25,
                                    title: 'Bài 1',
                                    subtitle: 'Phát âm',
                                  ),
                              const SizedBox(width: 20.0),
                              ActiveProjectsCard(
                                cardColor: kSecondaryColor.withOpacity(0.65),
                                loadingPercent: 0.65,
                                title: 'Bài 2',
                                subtitle: 'Phân biệt chữ cái',
                              ),
                              const SizedBox(width: 20.0),
                            ],
                           ),

                              ),
                            ],
                          ),
                       ),
                        ],
                      ),
                    ),
                   ),
                  ],
                ),
              ),
            );
  }
}
