import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

enum Opcoes { Resposta_1, Resposta_2, Resposta_3, Resposta_4 }

class ProvasSimulados extends StatefulWidget {
  const ProvasSimulados({super.key});

  @override
  State<ProvasSimulados> createState() => _ProvasSimuladosState();
}

class _ProvasSimuladosState extends State<ProvasSimulados> {
  Opcoes? _character1 = null;
  Opcoes? _character2 = null;
  Opcoes? _character3 = null;
  Opcoes? _character4 = null;
  Opcoes? _character5 = null;
  Opcoes? _character6 = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 25),
          child: Column(
            children: [
              const Text(
                'Questão 1 - Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 30,
              ),
              ListTile(
                title: const Text('Resposta 1'),
                leading: Radio<Opcoes>(
                  value: Opcoes.Resposta_1,
                  groupValue: _character1,
                  onChanged: (Opcoes? value) {
                    setState(() {
                      _character1 = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Resposta 2'),
                leading: Radio<Opcoes>(
                  value: Opcoes.Resposta_2,
                  groupValue: _character1,
                  onChanged: (Opcoes? value) {
                    setState(() {
                      _character1 = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Resposta 3'),
                leading: Radio<Opcoes>(
                  value: Opcoes.Resposta_3,
                  groupValue: _character1,
                  onChanged: (Opcoes? value) {
                    setState(() {
                      _character1 = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Resposta 4'),
                leading: Radio<Opcoes>(
                  value: Opcoes.Resposta_4,
                  groupValue: _character1,
                  onChanged: (Opcoes? value) {
                    setState(() {
                      _character1 = value;
                    });
                  },
                ),
              ),
              const Divider(),
              const Text(
                'Questão 2 - Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 30,
              ),
              ListTile(
                title: const Text('Resposta 1'),
                leading: Radio<Opcoes>(
                  value: Opcoes.Resposta_1,
                  groupValue: _character2,
                  onChanged: (Opcoes? value) {
                    setState(() {
                      _character2 = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Resposta 2'),
                leading: Radio<Opcoes>(
                  value: Opcoes.Resposta_2,
                  groupValue: _character2,
                  onChanged: (Opcoes? value) {
                    setState(() {
                      _character2 = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Resposta 3'),
                leading: Radio<Opcoes>(
                  value: Opcoes.Resposta_3,
                  groupValue: _character2,
                  onChanged: (Opcoes? value) {
                    setState(() {
                      _character2 = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Resposta 4'),
                leading: Radio<Opcoes>(
                  value: Opcoes.Resposta_4,
                  groupValue: _character2,
                  onChanged: (Opcoes? value) {
                    setState(() {
                      _character2 = value;
                    });
                  },
                ),
              ),
              const Divider(),
              const Text(
                'Questão 3 - Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 30,
              ),
              ListTile(
                title: const Text('Resposta 1'),
                leading: Radio<Opcoes>(
                  value: Opcoes.Resposta_1,
                  groupValue: _character3,
                  onChanged: (Opcoes? value) {
                    setState(() {
                      _character3 = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Resposta 2'),
                leading: Radio<Opcoes>(
                  value: Opcoes.Resposta_2,
                  groupValue: _character3,
                  onChanged: (Opcoes? value) {
                    setState(() {
                      _character3 = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Resposta 3'),
                leading: Radio<Opcoes>(
                  value: Opcoes.Resposta_3,
                  groupValue: _character3,
                  onChanged: (Opcoes? value) {
                    setState(() {
                      _character3 = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Resposta 4'),
                leading: Radio<Opcoes>(
                  value: Opcoes.Resposta_4,
                  groupValue: _character3,
                  onChanged: (Opcoes? value) {
                    setState(() {
                      _character3 = value;
                    });
                  },
                ),
              ),
              const Divider(),
              const Text(
                'Questão 4 - Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 30,
              ),
              ListTile(
                title: const Text('Resposta 1'),
                leading: Radio<Opcoes>(
                  value: Opcoes.Resposta_1,
                  groupValue: _character4,
                  onChanged: (Opcoes? value) {
                    setState(() {
                      _character4 = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Resposta 2'),
                leading: Radio<Opcoes>(
                  value: Opcoes.Resposta_2,
                  groupValue: _character4,
                  onChanged: (Opcoes? value) {
                    setState(() {
                      _character4 = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Resposta 3'),
                leading: Radio<Opcoes>(
                  value: Opcoes.Resposta_3,
                  groupValue: _character4,
                  onChanged: (Opcoes? value) {
                    setState(() {
                      _character4 = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Resposta 4'),
                leading: Radio<Opcoes>(
                  value: Opcoes.Resposta_4,
                  groupValue: _character4,
                  onChanged: (Opcoes? value) {
                    setState(() {
                      _character4 = value;
                    });
                  },
                ),
              ),
              const Divider(),
              const Text(
                'Questão 5 - Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 30,
              ),
              ListTile(
                title: const Text('Resposta 1'),
                leading: Radio<Opcoes>(
                  value: Opcoes.Resposta_1,
                  groupValue: _character5,
                  onChanged: (Opcoes? value) {
                    setState(() {
                      _character5 = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Resposta 2'),
                leading: Radio<Opcoes>(
                  value: Opcoes.Resposta_2,
                  groupValue: _character5,
                  onChanged: (Opcoes? value) {
                    setState(() {
                      _character5 = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Resposta 3'),
                leading: Radio<Opcoes>(
                  value: Opcoes.Resposta_3,
                  groupValue: _character5,
                  onChanged: (Opcoes? value) {
                    setState(() {
                      _character5 = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Resposta 4'),
                leading: Radio<Opcoes>(
                  value: Opcoes.Resposta_4,
                  groupValue: _character5,
                  onChanged: (Opcoes? value) {
                    setState(() {
                      _character5 = value;
                    });
                  },
                ),
              ),
              const Divider(),
              const Text(
                'Questão 6 - Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 30,
              ),
              ListTile(
                title: const Text('Resposta 1'),
                leading: Radio<Opcoes>(
                  value: Opcoes.Resposta_1,
                  groupValue: _character6,
                  onChanged: (Opcoes? value) {
                    setState(() {
                      _character6 = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Resposta 2'),
                leading: Radio<Opcoes>(
                  value: Opcoes.Resposta_2,
                  groupValue: _character6,
                  onChanged: (Opcoes? value) {
                    setState(() {
                      _character6 = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Resposta 3'),
                leading: Radio<Opcoes>(
                  value: Opcoes.Resposta_3,
                  groupValue: _character6,
                  onChanged: (Opcoes? value) {
                    setState(() {
                      _character6 = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Resposta 4'),
                leading: Radio<Opcoes>(
                  value: Opcoes.Resposta_4,
                  groupValue: _character6,
                  onChanged: (Opcoes? value) {
                    setState(() {
                      _character6 = value;
                    });
                  },
                ),
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
