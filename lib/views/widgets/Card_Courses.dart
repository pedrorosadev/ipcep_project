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
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/curso-cuidador-infantil');
        print('clicou');
      },
      child: OnHover(
        builder: (isHovered) {
          return Container(
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
                  child: Image.asset(
                    url,
                  ),
                ),
                Text(
                  nome_curso,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  grau_curso,
                  style: const TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 14,
                    color: Color(0xFF787993),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      descricao,
                      style: const TextStyle(fontSize: 10),
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
