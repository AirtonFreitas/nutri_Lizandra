import 'package:flutter/material.dart';
import '../profile_nutri//components/app_bar.dart';
import 'components/body_profile_nutri_widget.dart';

class ProfileNutriScreen extends StatefulWidget {
  const ProfileNutriScreen({Key? key}) : super(key: key);

  @override
  State<ProfileNutriScreen> createState() => _ProfileNutriScreenState();
}

class _ProfileNutriScreenState extends State<ProfileNutriScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBarHomeWidget(
          imageBar: 'pera',
          title: 'Conhecendo a Nutri',
        ),
      ),
      body: BodyProfileNutriWidget(),
    );
  }
}
