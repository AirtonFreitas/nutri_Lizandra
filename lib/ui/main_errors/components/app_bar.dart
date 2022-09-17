import 'package:flutter/material.dart';
import 'package:realiza_nutri/src/utils/colors_utils.dart';

class AppBarMainErrorWidget extends StatelessWidget {
  final String title;

  const AppBarMainErrorWidget(
      {Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        backgroundColor: ColorsUtils.greenPrimary,
        centerTitle: true,
        title: Padding(
            padding: EdgeInsets.only(top: 12),
            child: Row(
              children: [
                SizedBox(width: 8),
                Text('$title', style: TextStyle(color: ColorsUtils.greenTitle, fontFamily: 'GeosansLight', fontSize: 20)),
              ],
            )));
  }
}
