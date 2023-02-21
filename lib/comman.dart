import 'package:flutter/material.dart';
import 'package:myfirst_app/main.dart';
import 'package:postgres/postgres.dart';

class AppCommon {
  static var connection;
}

showLoAlert(BuildContext context1) {
  showDialog(
      context: context1,
      builder: (BuildContext context2) {
        return AlertDialog(
          // ignore: prefer_const_constructors
          title: Text("Are you sure you want to log out?"),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context2,
                    // ignore: prefer_const_constructors
                    MaterialPageRoute(builder: (context1) => MyApp()),
                  );
                },
                // ignore: prefer_const_constructors
                child: Text("Yes")),
            TextButton(
                onPressed: () {
                  Navigator.pop(context2);
                },
                // ignore: prefer_const_constructors
                child: Text("No")),
          ],
        );
      });
}

Future operation() async {
  var connection = PostgreSQLConnection(
      "192.168.1.81", // hostURL
      5432, // port
      "empleave", // databaseName
      username: "postgres",
      password: "AdvEnt4pgSQL",
      useSSL: true);

  await connection.open();
  print("Connected");
}
