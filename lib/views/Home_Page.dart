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
        title: const Text(
          'IPCEP - Cursos',
          style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
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
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            padding: const EdgeInsets.all(18),
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            crossAxisCount: orientation == Orientation.portrait ? 2 : 4,
            children: [
              CardCourses(
                nome_curso: 'Cuidador Infantil',
                grau_curso: 'Profissionalizante',
                descricao: 'DESCRIÇÃO',
                url: '../../../assets/images/cuidador-infantil.png',
                // rota: '/curso-cuidador-infantil',
              ),
              CardCourses(
                nome_curso: 'Saúde Mental',
                grau_curso: 'Capacitação',
                descricao: 'DESCRIÇÃO',
                url: '../../../assets/images/saude_mental.jpg',
                // rota: '/curso-cuidador-infantil',
              ),
              CardCourses(
                nome_curso: 'COVID-19',
                grau_curso: 'Capacitação',
                descricao: 'DESCRIÇÃO',
                url: '../../../assets/images/covid19.jpeg',
                // rota: '/curso-cuidador-infantil',
              ),
              CardCourses(
                nome_curso: 'Saúde Digital',
                grau_curso: 'Capacitação',
                descricao: 'DESCRIÇÃO',
                url: '../../../assets/images/saude_digital.jpg',
                // rota: '/curso-cuidador-infantil',
              ),
            ],
          );
        },
      ),
    );
  }
}
