import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ipcep_project/views/widgets/Video_Player.dart';

class Conteudo_Curso extends StatefulWidget {
  const Conteudo_Curso({super.key});

  @override
  State<Conteudo_Curso> createState() => _Conteudo_CursoState();
}

class _Conteudo_CursoState extends State<Conteudo_Curso> {
  @override
  Widget build(BuildContext context) {
    double altura = MediaQuery.of(context).size.height;
    double largura = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.black,
                    child: ListView(
                      children: [
                        SizedBox(
                          height: altura * 1,
                          width: largura * 1,
                          child: VideoApp(),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.black12,
                    child: ListView(children: [
                      Container(
                        color: Colors.white,
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Conteúdo do Curso',
                            style: TextStyle(fontSize: 21),
                          ),
                        ),
                      ),
                      const Divider(
                        height: 0,
                      ),
                      SizedBox(
                        height: 100,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Introdução: CUIDADOR INFANTIL',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/curso/prova');
                          },
                          child: const Text(
                            'Prova',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
