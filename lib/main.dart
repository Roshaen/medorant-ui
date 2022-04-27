import 'package:flutter/material.dart';
import 'package:ui_test/pages/login.dart';
import 'package:ui_test/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const MyHomePage(),
      routes: {
        AllRoutes.loginRoute: (context) => const Login(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, AllRoutes.loginRoute);
            },
            child: const Text('Login Page'),
          ),
        ],
      ),
    );
  }
}
