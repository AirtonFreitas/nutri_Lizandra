import 'package:flutter/material.dart';
import 'package:realiza_nutri/src/utils/colors_utils.dart';

class AppBarNavigationWidget extends StatelessWidget {
  final String title;

  const AppBarNavigationWidget(
      {Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.center,
      children: [
       Text('$title', style: TextStyle(color: ColorsUtils.greenTitle, fontFamily: 'GeosansLight', fontSize: 20)),
      ],
    );
  }
}
