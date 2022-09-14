import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../home_store.dart';

final homeStore = HomeStore();

class BodyHomeWidget extends StatefulWidget {
  const BodyHomeWidget({Key? key}) : super(key: key);

  @override
  State<BodyHomeWidget> createState() => _BodyHomeWidgetState();
}

class _BodyHomeWidgetState extends State<BodyHomeWidget> {
  @override
  Widget build(BuildContext context) {
    homeStore.checkRegistery();
    return Center(
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Observer(builder: (BuildContext context) {
                return Text(
                  'Que bom ver você novamente ${homeStore.name.split(' ')[0]}',
                  style:
                      const TextStyle(fontFamily: 'GeosansLight', fontSize: 22),
                );
              })
            ],
          )),
    );
  }
}
