// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_cart/components/drawer_tile.dart';
import 'package:food_cart/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // applogo
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(),
          ),
          //   home list tile
          MyDrawerTile(
              text: "H O M E",
              onTap: () => Navigator.pop(context),
              icon: Icons.home),
          // settings
          MyDrawerTile(
              text: "S E T T I N G S",
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsPage())),
              icon: Icons.settings),
          const Spacer(),
          // logout
          MyDrawerTile(
              text: "L O G O U T ", onTap: () {}, icon: Icons.logout_rounded),
          SizedBox(
            height: 27,
          ),
        ],
      ),
    );
  }
}
