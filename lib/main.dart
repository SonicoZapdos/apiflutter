import 'package:apiflutter/cadastroUsers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter User API Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Center(
      child: Column(
        children: <Widget>[
          const Text("Bem-Vindo a ListUser!!!"),
          ElevatedButton(onPressed: _listUser, child: const Text("Ver Usuários!!!")),
          ElevatedButton(onPressed: _cadUser, child: const Text("Cadastrar Usuário!!!")),
        ],
      ),
    ),
    ); 
  }
  void _listUser() {
  Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => UserListScreen()));
  }

  void _cadUser() {
  Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => UserListScreen()));
  }
}