import 'package:flutter/material.dart';
import 'package:hello_world/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Image.network(
                  'https://scontent.fsdu26-1.fna.fbcdn.net/v/t1.0-9/67090290_3052910311415776_4481350863553560576_o.jpg?_nc_cat=107&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeEUklxr191hNpcgDERuQVMl3dh8ItA4h3rd2Hwi0DiHemX_CFCclA2CLR6MrzkF_3_gwuDZif2MSVK9of7KAxZ_&_nc_ohc=W0v-aSjKgLAAX8pGSD4&_nc_ht=scontent.fsdu26-1.fna&oh=b5be5dd4423368beb442bedc49383768&oe=60807009'),
              accountName: Text('Felipe Carvalho'),
              accountEmail: Text('felipe@teste.com'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              subtitle: Text('tela de inicio'),
              onTap: () {
                print('home');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Logout'),
              subtitle: Text('Finalizar sessão'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [ThemeSwitch()],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: SizedBox(
                width: 100,
                height: 100,
                child: Image.asset('assets/images/logo.png'),
              ),
            ),
            Text('Contador $counter'),
            Padding(padding: EdgeInsets.only(top: 10)),
            ThemeSwitch(),
            Padding(padding: EdgeInsets.only(top: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.deepOrangeAccent.shade200,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.deepOrangeAccent.shade200,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.deepOrangeAccent.shade200,
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class ThemeSwitch extends StatelessWidget {
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
