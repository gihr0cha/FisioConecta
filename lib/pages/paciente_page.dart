import 'package:flutter/material.dart';
import 'package:flutter_application/pages/registerPacients_page.dart';
import 'package:go_router/go_router.dart';
import '../widgets/navegation_widget.dart';

class PacientePage extends StatefulWidget {
  final List<Pacientes> pacientes;

  const PacientePage({Key? key, required this.pacientes}) : super(key: key);

  @override
  State<PacientePage> createState() {
    return _PacientePageState();
  }
}

class _PacientePageState extends State<PacientePage> {
  get length => widget.pacientes.length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paciente'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            color: Colors.green,
            onPressed: () {
              // Navigate to the page to add new patients
              context.go('/registerPacients');
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: widget.pacientes.length,
        itemBuilder: (context, index) {
          return PacienteCard(paciente: widget.pacientes[index]);
        },
      ),
      bottomNavigationBar: const NavigacaoBar(),
    );
  }
}
