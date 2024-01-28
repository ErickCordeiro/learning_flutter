import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
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
              leading: Icon(Icons.logout),
              title: Text('Sair do sistema'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: const [
          CustomSwitcher(),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Contador: $count"),
            const CustomSwitcher(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}

class CustomSwitcher extends StatelessWidget {
  const CustomSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
