import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                  'https://avatars.githubusercontent.com/u/14067200?v=4'),
            ),
            accountName: Text('Erick Cordeiro'),
            accountEmail: Text('erickcordeiroa@gmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Início'),
            onTap: () {
              print("clicando no drawer");
            },
          ),
          ListTile(
            leading: Icon(Icons.paste),
            title: Text('Categorias'),
            onTap: () {
              Navigator.of(context).pushNamed('/category');
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Sair do sistema'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
        ],
      ),
    );
  }
}
