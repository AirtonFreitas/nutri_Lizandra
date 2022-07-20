import 'package:flutter/material.dart';
import 'package:realiza_nutri/src/utils/colors_utils.dart';

class PackagePremium extends StatelessWidget {
  const PackagePremium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('premium-package');
      },
      child: Stack(
          children: [
              Text('Conhecer'),
            Image.asset('name'),
          ],
        ),
      );
  }
}
