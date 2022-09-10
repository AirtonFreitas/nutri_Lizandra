import 'package:flutter/material.dart';
import 'package:realiza_nutri/ui/home/home_store.dart';

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
    return _goRegistry();
  }

  Widget _goRegistry() {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Vamos fazer cadastro?',
              style: TextStyle(fontFamily: 'GeosansLight', fontSize: 22),
            ),
            const SizedBox(
              height: 6,
            ),
            const Text(
              'Assim vamos ver as melhores opções para seu perfil',
              style: TextStyle(fontFamily: 'GeosansLight', fontSize: 16),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'registration-name');
              },
              child: Text('avançar'),
            )
          ],
        )));
  }
}
