import 'package:flutter/material.dart';
import 'package:realiza_nutri/src/utils/colors_utils.dart';
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
    return Scaffold(backgroundColor: ColorsUtils.greenPrimary,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBarProfileNutriWidget(
          title: 'Conhecendo a Nutri',
        ),
      ),
      body: const BodyProfileNutriWidget(),
    );
  }
}
