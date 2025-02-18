import 'package:flutter/material.dart';
import '../widgets/navegation_widget.dart';

class HistoricoPage extends StatefulWidget {
  const HistoricoPage({super.key});

  @override
  State<HistoricoPage> createState() => _HistoricoPageState();
}

class _HistoricoPageState extends State<HistoricoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false, title: const Text('Historico')),
        body: ListView(
          children: const <Widget>[
            ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Nome do paciente')),
          ],
        ),
        bottomNavigationBar: const NavigacaoBar());
  }
}
