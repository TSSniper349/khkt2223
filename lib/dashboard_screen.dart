import 'package:khkt2223/screens/my_fields.dart';
import 'package:flutter/material.dart';
import 'package:khkt2223/screens/storage_details.dart';
import 'constants.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            //Header(),
            const SizedBox(height: kDefaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: const [
                      MyFiles(),
                      SizedBox(height: kDefaultPadding),
                      StorageDetails(),
                      //RecentFiles(),
                      // if (Responsive.isMobile(context))
                      //   SizedBox(height: defaultPadding),
                      // if (Responsive.isMobile(context)) StarageDetails(),
                    ],
                  ),
                ),
                // if (!Responsive.isMobile(context))
                //   SizedBox(width: defaultPadding),
                // // On Mobile means if the screen is less than 850 we dont want to show it
                // if (!Responsive.isMobile(context))
                //   Expanded(
                //     flex: 2,
                //     child: StarageDetails(),
                //   ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
