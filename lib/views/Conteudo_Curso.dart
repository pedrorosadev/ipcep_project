import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Conteudo_Curso extends StatefulWidget {
  const Conteudo_Curso({super.key});

  @override
  State<Conteudo_Curso> createState() => _Conteudo_CursoState();
}

class _Conteudo_CursoState extends State<Conteudo_Curso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Image(
          image: AssetImage('../assets/images/logo.png'),
        ),
      ),
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
                      children: [],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
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
                          onPressed: () {},
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
