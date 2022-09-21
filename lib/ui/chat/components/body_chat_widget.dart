import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';

class BodyChatWidget extends StatefulWidget {
  const BodyChatWidget({Key? key}) : super(key: key);

  @override
  State<BodyChatWidget> createState() => _BodyChatWidget();
}

class _BodyChatWidget extends State<BodyChatWidget> {
  late AdmobInterstitial interstitialAd;

  @override
  void initState() {
    super.initState();
    interstitialAd = AdmobInterstitial(
      adUnitId: 'ca-app-pub-3721429763641925/4231395337',
    );
    interstitialAd.load();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Chat com a Nutri aqui embaixo:',
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'GeosansLight',
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
        Row(children: [
          getBanner(AdmobBannerSize.BANNER),
        ]),
      ]),
    );
  }

  AdmobBanner getBanner(AdmobBannerSize size) {
    return AdmobBanner(
      adUnitId: 'ca-app-pub-3721429763641925/6928289982',
      adSize: size,
    );
  }

  void showInterstitial() {
    interstitialAd.show();
  }
}
