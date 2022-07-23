import 'package:flutter/material.dart';
import '../../src/utils/colors_utils.dart';
import 'bottom_navigation_item_widget.dart';

class NavigationPageWidget extends StatefulWidget {
  const NavigationPageWidget({Key? key}) : super(key: key);

  @override
  State<NavigationPageWidget> createState() => _NavigationPageWidgetState();
}

class _NavigationPageWidgetState extends State<NavigationPageWidget> {
  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 3,
      backgroundColor: ColorsUtils.greenPrimary,
      type: BottomNavigationBarType.shifting,
      items: [
        BottomNavigationItemWidget().item(title: 'Inicio', image: 'home'),
        BottomNavigationItemWidget().item(title: 'Perfil', image: 'person'),
        BottomNavigationItemWidget().item(title: 'Plano Alimentar', image: 'plan'),
        BottomNavigationItemWidget().item(title: 'Chat Nutri', image: 'chat'),
      ],
      selectedItemColor: ColorsUtils.greenTitle,
        currentIndex: _selectedIndex,
        onTap: _onTap,

    );
  }

}
