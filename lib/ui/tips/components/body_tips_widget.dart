import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';

class BodyTipsWidget extends StatefulWidget {
  const BodyTipsWidget({Key? key}) : super(key: key);

  @override
  State<BodyTipsWidget> createState() => _BodyTipsWidgetState();
}

class _BodyTipsWidgetState extends State<BodyTipsWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
              child: Column(
                children: [
                  const Text(
                    'Dicas Nutricionais',
                    style: TextStyle(fontFamily: 'GeosansLight', fontSize: 28),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Image.asset('assets/dicas.png'),
                  getBanner(AdmobBannerSize.BANNER),
                ],
              ),
            )));
  }

  AdmobBanner getBanner(AdmobBannerSize size) {
    return AdmobBanner(
      adUnitId: 'ca-app-pub-3721429763641925/5050169904',
      adSize: size,
    );
  }
}
