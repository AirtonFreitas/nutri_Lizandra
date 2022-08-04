import 'package:flutter/material.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 134, 187, 125)),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/logo_fb.png'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Saúde nas mãos',
                      style: TextStyle(
                          fontFamily: 'GeosansLight',
                          fontSize: 22,
                          color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text(
              'Dicas Nutricionais',
              style: TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
            ),
            leading: Icon(Icons.light_mode_outlined),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, 'tips');
            },
          ),
          ListTile(
            title: const Text(
              'Receitas Fit',
              style: TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
            ),
            leading: Icon(Icons.receipt_long_outlined),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, 'revenues');
            },
          ),
          ListTile(
            title: const Text(
              'Hábitos saudáveis',
              style: TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
            ),
            leading: Icon(Icons.mood_outlined),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, 'healthy-habits');
            },
          ),
          ListTile(
            title: const Text(
              'Principais erros',
              style: TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
            ),
            leading: Icon(Icons.mood_bad),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, 'main-errors');
            },
          ),
          ListTile(
            title: const Text(
              'Antes e Depois',
              style: TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
            ),
            leading: Icon(Icons.camera_alt_rounded),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, 'before-and-after');
            },
          ),
          ListTile(
            title: const Text(
              'Agende sua Consulta',
              style: TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
            ),
            leading: Icon(Icons.calendar_month_outlined),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, 'shedule-consultation');
            },
          ),
          ListTile(
            title: const Text(
              'Conhecendo a Nutri',
              style: TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
            ),
            leading: Icon(Icons.ad_units_outlined),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, 'profile_nutri');
            },
          ),
        ],
      ),
    );
  }
}
