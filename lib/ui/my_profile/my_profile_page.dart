import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:realiza_nutri/ui/my_profile/my_profile_store.dart';
import '../home/components/body_home_registery_widget.dart';
import 'components/body_profile_widget.dart';

final profileStore = MyProfileStore();

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}
class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    profileStore.checkRegistery();
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(40),
        ),
      ),
      child: Observer(builder: (BuildContext context) {
        return profileStore.registred
            ? const BodyProfileWidget()
            : const BodyHomeRegisteryWidget();
      })
    );
  }


}
