import 'package:deliver_ap/components/drawer/custom_drawer_tile.dart';
import 'package:deliver_ap/pages/settings_page.dart';
import 'package:flutter/material.dart';

import '../../auth/login_or_register.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 100),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(25),
            child: Divider(color: Theme.of(context).colorScheme.secondary),
          ),

          CustomDrawerTile(title: "H O M E", icon: Icons.home, onTap: () {}),
          CustomDrawerTile(
            title: "A J U S T E S",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsPage()),
              );
            },
          ),

          Spacer(),
          CustomDrawerTile(
            title: "Cerrar sesión",
            icon: Icons.logout,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginOrRegisterLayout(),
                ),
              );
            },
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
