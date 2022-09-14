import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:realiza_nutri/ui/home/home_store.dart';
import 'components/body_home_registery_widget.dart';
import 'components/body_home_widget.dart';

final homeStore = HomeStore();

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    homeStore.checkRegistery();

    return Container(decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(40),
      ),
    ),
      child: Observer(builder: (BuildContext context) {
        return homeStore.registred
            ? const BodyHomeWidget()
            : const BodyHomeRegisteryWidget();
      }),


    );
  }
}
