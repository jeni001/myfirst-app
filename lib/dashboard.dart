import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:myfirst_app/leavepg.dart';
import 'package:myfirst_app/main.dart';
import 'package:myfirst_app/comman.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 1, 35, 58),
        title: Text('DashBoard'),
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromRGBO(54, 86, 104, 1),
            ),
            child: Text('Menu'),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DashBoard()));
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Apply for Leave'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => LeavePg()));
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Logout'),
            onTap: () {
              showLoAlert(context);
              // Update the state of the app.
              // ...
            },
          ),
        ],
      )),
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                child: const Text('Apply For Leave'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LeavePg()));
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                child: const Text('Logout'),
                onPressed: () {
                  showLoAlert(context);
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
