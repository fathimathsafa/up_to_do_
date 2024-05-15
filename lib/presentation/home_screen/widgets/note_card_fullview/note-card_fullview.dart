import 'package:flutter/material.dart';
import 'package:up_to_do/core/constants/color_constants.dart';
import 'package:up_to_do/global_widget/colors_constants.dart';

import '../../../../global_widget/global_textstyles.dart';

class NoteCardFullView extends StatefulWidget {
  const NoteCardFullView(
      {super.key,
      required this.category,
      required this.title,
      required this.description,
      this.date});
  final String category;
  final String title;
  final String description;
  final String? date;

  @override
  State<NoteCardFullView> createState() => _NoteCardFullViewState();
}

class _NoteCardFullViewState extends State<NoteCardFullView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycolorlight,
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
        title: Text(widget.title, style: titletext),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.category,
                    style: subtextbrown20,
                  ),
                  Text(widget.date.toString(), style: subtextdark),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1.5,
                color: ColorTheme.maincolor,
              ),
              SizedBox(
                height: 10,
              ),
              Text(widget.description,
                  textAlign: TextAlign.justify, style: subtextgrey16),
            ],
          ),
        ),
      ]),
    );
  }
}
