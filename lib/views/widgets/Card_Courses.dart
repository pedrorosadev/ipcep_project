import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ipcep_project/models/courses.dart';
import 'package:ipcep_project/routes/app_routes.dart';
import 'package:ipcep_project/views/Conteudo_Curso.dart';
import 'package:ipcep_project/views/widgets/onHover.dart';

class CardCourses extends StatelessWidget {
  CardCourses({
    super.key,
    required this.nome_curso,
    required this.descricao,
    required this.grau_curso,
    required this.url,
    // required this.rota,
  });

  final String nome_curso;
  final String descricao;
  final String grau_curso;
  final String url;
  // final String rota;
  // final Function direcionar;

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/curso-cuidador-infantil');
        print('clicou');
      },
      child: OnHover(
        builder: (isHovered) {
          return Container(
            height: altura * 0.4,
            width: largura * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.amber.withOpacity(0.8),
                  Colors.amberAccent.withOpacity(0.5),
                  Colors.amber.withOpacity(0),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 4,
                  child: Image.asset(
                    url,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    nome_curso,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    grau_curso,
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 14,
                      color: Color(0xFF787993),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      descricao,
                      style: const TextStyle(fontSize: 14),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
