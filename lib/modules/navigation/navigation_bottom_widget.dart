import 'package:flutter/material.dart';
import '../../src/utils/colors_utils.dart';
import 'bottom_navigation_item_widget.dart';

class NavigationPageWidget extends StatelessWidget{
  final int index;
  final Function(int value) changeIndex;

  const BottomNavigationItemWidget({Key? key}) : super(key: key);

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
      currentIndex: index,
      selectedItemColor: ColorsUtils.greenTitle,
      onTap: changeIndex,

    );
  }

  alteraTela(index) {
    switch(index){
      case 0:
        return Navigator.pushNamed(context, 'home');
      case 1:
        return Navigator.pushNamed(context, 'profile');
      case 2:
        return Navigator.pushNamed(context, 'food-plan');
      case 3:
        return Navigator.pushNamed(context, 'chat');
      default:
        print('');
    }
  }
}
