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
    return DefaultTabController(
      length: 2, // Número de abas
      child: Scaffold(
        appBar: AppBar(
          title: const Text('UserList App', style: TextStyle(color: Colors.white)),
          centerTitle: true,
          shadowColor:Colors.black54,
          elevation: 15,
          backgroundColor: Colors.blue ,
        ),
        body: const TabBarView(
          children: [
            MostrarUsers(),
            Center(child: UserListScreen(),),
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.blue,
          child: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.group), text: 'Listagem de Usuários'),
              Tab(icon: Icon(Icons.person_add), text: 'Cadastro'),
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.white,
          ),
        ),
      ),
      );
  }
}