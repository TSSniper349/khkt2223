import 'package:flutter/material.dart';
import 'package:khkt2223/components/quiz_screen.dart';
import 'package:khkt2223/course_screen.dart';
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
import 'main_screen.dart';

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
      backgroundColor: bgColor,
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
      backgroundColor: kSecondaryColor,
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
                            color: Colors.white70, size: 30.0),
                        Icon(Icons.search,
                            color: Colors.white70, size: 30.0),
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
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                'Not all readers are leaders,\n but all leaders are readers.',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w400,
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
                            'Ch???c n??ng',
                            textAlign: TextAlign.start,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(color: Colors.white70,fontWeight: FontWeight.w600, fontFamily: 'Poppins-Bold'),
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
                                        title: 'T?? v???n',
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
                                      builder: (context) => CourseScreen()),
                                  );
                                },
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      TaskColumn(
                                        icon: Icons.search,
                                        iconBackgroundColor: LightColors.kDarkYellow,
                                        title: "B??i t???p",
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
                                        title: 'Ki???m Tra',
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
                                        title: 'K???t qu???',
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
                            'Ti???n ????? h???c t???p',
                            textAlign: TextAlign.start,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(color: Colors.white70,fontWeight: FontWeight.w600, fontFamily: 'Poppins-Bold'),
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
                                    cardColor: kColor.withOpacity(0.3),
                                    loadingPercent: 0.25,
                                    title: 'B??i 1',
                                    subtitle: 'Ph??t ??m',
                                  ),
                              const SizedBox(width: 20.0),
                              ActiveProjectsCard(
                                cardColor: kColor.withOpacity(0.3),
                                loadingPercent: 0.65,
                                title: 'B??i 2',
                                subtitle: 'Ph??n bi???t ch??? c??i',
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
