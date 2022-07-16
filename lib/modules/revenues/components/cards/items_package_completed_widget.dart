import 'package:flutter/material.dart';
import 'package:realiza_nutri/src/utils/colors_utils.dart';

class ItemsPakageCompleted extends StatelessWidget {
  var nameItem;
  bool check;

  ItemsPakageCompleted({Key? key, required this.nameItem, required this.check}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(2),
    //color: ColorsUtils.greenNav,
        child: Row(mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          check ? Icons.check_box : Icons.not_interested,
          color: check ? Colors.green : Colors.red,
        ),
        SizedBox(width: 8),
        Text(nameItem, style: TextStyle(fontFamily: 'GeosansLight'),)
      ],
    ));

  }
}
