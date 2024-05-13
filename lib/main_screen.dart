import 'package:apiflutter/cadastroUsers.dart';
import 'package:apiflutter/mostrarUsers.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            const Text("Bem-Vindo a ListUser!!!"),
            ElevatedButton(
                onPressed: _listUser, child: const Text("Ver Usuários!!!")),
            ElevatedButton(
                onPressed: _cadUser, child: const Text("Cadastrar Usuário!!!")),
          ],
        ),
      ),
    );
  }

  void _listUser() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const UserListScreen()));
  }

  void _cadUser() {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => const MostrarUsers()));
  }
}