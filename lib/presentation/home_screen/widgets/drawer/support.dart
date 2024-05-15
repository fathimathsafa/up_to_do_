import 'package:flutter/material.dart';
import 'package:up_to_do/core/constants/color_constants.dart';
import 'package:up_to_do/global_widget/colors_constants.dart';

import '../../../../global_widget/global_textstyles.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.bgcolor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: ColorTheme.maincolor,
          ),
        ),
        backgroundColor: ColorTheme.bgcolor,
        centerTitle: true,
        title: Text(
          'Support',
          style: maintextdark,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: primarycolorlight,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: primarycolordark,
                    width: 3,
                  )),
              width: MediaQuery.of(context).size.width * 0.95,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text("Contact Information", style: maintextlight),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.email_outlined,
                          color: primarycolorlight,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'contact@luminartecnolab.com',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
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
