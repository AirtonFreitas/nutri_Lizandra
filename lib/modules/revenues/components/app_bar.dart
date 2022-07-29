import 'package:flutter/material.dart';
import 'package:realiza_nutri/src/utils/colors_utils.dart';

class AppBarRevenueWidget extends StatelessWidget {
  final String title;
  final String imageBar;

  const AppBarRevenueWidget(
      {Key? key, required this.title, required this.imageBar})
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
                Image.asset(
                  'assets/images_app_bar/$imageBar.png',
                  height: 40,
                ),
                SizedBox(width: 8),
                Text('$title', style: TextStyle(color: ColorsUtils.greenTitle, fontFamily: 'GeosansLight', fontSize: 20)),
              ],
            )));
  }
}
