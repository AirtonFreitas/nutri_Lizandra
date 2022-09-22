import 'package:flutter/material.dart';

class ItemsPakageCompleted extends StatelessWidget {
  var nameItem;
  bool check;

  ItemsPakageCompleted({Key? key, required this.nameItem, required this.check}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2),
    //color: ColorsUtils.greenNav,
        child: Row(mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: 8),
        Icon(
          check ? Icons.check_box : Icons.not_interested,
          color: check ? Colors.green : Colors.red,
        ),
        const SizedBox(width: 8),
        Text(nameItem, style: const TextStyle(fontFamily: 'GeosansLight'),)
      ],
    ));

  }
}
