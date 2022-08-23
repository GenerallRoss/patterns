// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'classes.dart';

class MyObserver extends StatelessWidget {
  const MyObserver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  // ignore: must_call_super
  void initState() {
    NewObserver obs = NewObserver();
    Client firstClient = Client('Bob', obs);
    Client secondClient = Client('Jake', obs);
    Client thirdClient = Client('Saul', obs);
    obs.notifyObservers('Тест');
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(),
    );
  }
}
