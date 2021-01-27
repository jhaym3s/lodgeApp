import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  Widget customListTile(String title, IconData icon){
    return ListTile(
      title: Text(title),
      trailing: Icon(icon),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          customListTile("Login", Icons.login),
          customListTile("Login", Icons.login),
          customListTile("Login", Icons.login),
          customListTile("Login", Icons.login),
          customListTile("Logout", Icons.logout),
      ],
      ),
    );
  }
}
