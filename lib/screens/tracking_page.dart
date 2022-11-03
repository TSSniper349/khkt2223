import 'package:flutter/material.dart';
import 'package:khkt2223/theme/colors/light_colors.dart';
import 'package:khkt2223/screens/ListDayDataModel.dart';

class TrackingPage extends StatelessWidget {
  Text subheading(String title) {
    return Text(
      title,
      style: TextStyle(
          color: LightColors.kDarkBlue,
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.2),
    );
  }
  static List<String> ListDay = ["Ngay 1", "Ngay 2","Ngay 3"];
  final List<ListDayDataModel> ListDayData = List.generate(
      ListDay.length,
          (index)
      => ListDayDataModel('${ListDay[index]}','desc'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tracking"),
      ),
      body: ListView.builder(
        itemCount: ListDayData.length,

        itemBuilder: (context, index){
          return Card(
            child: ListTile(
              title: Text(ListDayData[index].name),
              leading: SizedBox(
                width: 50,
                height: 50,
              ),
            ),
          );
        }
      ),
    );
  }
}