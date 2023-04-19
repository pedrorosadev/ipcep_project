import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ipcep_project/models/courses.dart';
import 'package:ipcep_project/models/data/dummy_courses.dart';
import 'package:ipcep_project/routes/app_routes.dart';
import 'package:ipcep_project/views/widgets/Card_Courses.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final Map<String, String> _coursesData = {};

  // void _loadData(Courses courses) {
  //   if (courses != null) {
  //     _coursesData['id'] = courses.id;
  //     _coursesData['nome'] = courses.nome_curso;
  //     _coursesData['descricao'] = courses.descricao;
  //     _coursesData['grau_curso'] = courses.grau_curso;
  //     _coursesData['url'] = courses.url;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // final courses = ModalRoute.of(context)?.settings.arguments as Courses;
    // _loadData(courses);

    return Scaffold(
      appBar: AppBar(
        leading: const Image(
          image: AssetImage('../assets/images/logo.png'),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.Login);
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
            child: Row(
              children: const [
                Icon(Icons.person_outlined),
                Text('Área do Aluno'),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 22, right: 22, top: 42),
        child: GridView.count(
          crossAxisSpacing: 4,
          crossAxisCount: 4,
          children: [
            CardCourses(
              nome_curso: 'Cuidador Infantil',
              grau_curso: 'Profissionalizante',
              descricao:
                  'Auxilia nas atividades de alimentação, higiene, locomoção, atenção ao desenvolvimento das habilidades motoras, cognitivas e emocionais da criança. Atua em todas as atividades escolares nas quais se fizer necessária a sua presença.',
              url: '../../../assets/images/cuidador-infantil.png',
              // rota: '/curso-cuidador-infantil',
            ),
            CardCourses(
              nome_curso: 'Saúde Mental',
              grau_curso: 'Capacitação',
              descricao:
                  'A Saúde Mental de uma pessoa está relacionada à forma como ela reage às exigências da vida e ao modo como harmoniza seus desejos, capacidades, ambições, ideias e emoções. Ter saúde mental é: Estar bem consigo mesmo e com os outros.',
              url: '../../../assets/images/saude_mental.jpg',
              // rota: '/curso-cuidador-infantil',
            ),
            CardCourses(
              nome_curso: 'Enfrentamento da COVID-19',
              grau_curso: 'Capacitação',
              descricao:
                  'A COVID-19 é uma doença infecciosa causada pelo coronavírus SARS-CoV-2 e tem como principais sintomas febre, cansaço e tosse seca.',
              url: '../../../assets/images/covid19.jpeg',
              // rota: '/curso-cuidador-infantil',
            ),
            CardCourses(
              nome_curso: 'Saúde Digital',
              grau_curso: 'Capacitação',
              descricao:
                  'A Saúde Digital compreende o uso de recursos de Tecnologia de Informação e Comunicação (TIC) para produzir e disponibilizar informações confiáveis sobre o estado de saúde para os cidadãos, profissionais de saúde e gestores públicos.',
              url: '../../../assets/images/saude_digital.jpg',
              // rota: '/curso-cuidador-infantil',
            ),
          ],
        ),
      ),
    );
  }
}
