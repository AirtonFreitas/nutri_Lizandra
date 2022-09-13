import 'package:flutter/material.dart';
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
    return _goHome();
  }

  Widget _goHome() {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Que bom ver você novamente ${homeStore.name.split(' ')[0]}',
                  style: const TextStyle(fontFamily: 'GeosansLight', fontSize: 22),
                ),

              ],
            )));
  }
}
