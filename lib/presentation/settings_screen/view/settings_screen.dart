import 'package:flutter/material.dart';

import 'package:up_to_do/global_widget/global_textstyles.dart';
import 'package:up_to_do/presentation/home_screen/widgets/drawer/privacy_policy.dart';
import 'package:up_to_do/presentation/home_screen/widgets/drawer/terms_and_conditions.dart';

import '../../home_screen/widgets/drawer/support.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(null),
        title: Text(
          "Settings",
          style: Maintitle,
        ),
      ),
      body: Column(
        children: [
          ListTile(
            title: Row(
              children: [
                const Icon(
                  Icons.info_outline,
                  color: Colors.black,
                  size: 22,
                ),
                const SizedBox(width: 10),
                Text('Terms and Conditions', style: subtextdark),
              ],
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TermsAndConditionScreen(),
                  ));
            },
          ),
          ListTile(
            title: Row(
              children: [
                const Icon(
                  Icons.mail_outline_outlined,
                  color: Colors.black,
                  size: 22,
                ),
                const SizedBox(width: 10),
                Text('Support', style: subtextdark),
              ],
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SupportScreen(),
                  ));
            },
          ),
          ListTile(
            title: Row(
              children: [
                const Icon(
                  Icons.privacy_tip_outlined,
                  color: Colors.black,
                  size: 22,
                ),
                const SizedBox(width: 10),
                Text('Privacy Policy', style: subtextdark),
              ],
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PrivacyPolicyScreen(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
