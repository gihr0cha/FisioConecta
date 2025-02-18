import 'package:flutter/material.dart';
import '../widgets/navegation_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: ListView(
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Nome do paciente'),
              subtitle: Text('dd/mm'),
            ),
          ],
        ),
        bottomNavigationBar: const NavigacaoBar());
  }
}
