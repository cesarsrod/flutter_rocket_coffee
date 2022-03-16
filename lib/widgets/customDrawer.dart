import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Text('texto')),
          ListTile(
            title: Text('Home'),
          ),
          Divider(
            height: 1,
            color: Colors.white,
          ),
          ListTile(
            title: Text('Menu'),
          ),
          Divider(
            height: 1,
            color: Colors.white,
          ),
          ListTile(
            title: Text('Recompensas'),
          ),
          Divider(
            height: 1,
            color: Colors.white,
          ),
          ListTile(
            title: Text('Gift Cards'),
          ),
          Divider(
            height: 1,
            color: Colors.white,
          ),
          ListTile(
            title: Text('Lojas'),
          ),
          Divider(
            height: 1,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
