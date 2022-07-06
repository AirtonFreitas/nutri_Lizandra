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
    alteraTela(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(elevation: 3,
      backgroundColor: ColorsUtils.greenPrimary,
      type: BottomNavigationBarType.shifting,
      items: [
        BottomNavigationItemWidget().item(title: 'Inicio', image: 'home'),
        BottomNavigationItemWidget().item(title: 'Perfil', image: 'person'),
        BottomNavigationItemWidget()
            .item(title: 'Plano Alimentar', image: 'plan'),
        BottomNavigationItemWidget().item(title: 'Chat Nutri', image: 'chat'),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: ColorsUtils.greenTitle,
      onTap: _onTap,

    );
  }

  alteraTela(index) {
    switch(index){
      case 0:
        //return Navigator.pushNamed(context, 'home');
      case 1:
        //return Navigator.pushNamed(context, 'profile');
      case 2:
        //return Navigator.pushNamed(context, 'plan');
      case 3:
        //return Navigator.pushNamed(context, 'chat');
      default:
        print('');
    }
  }
}
