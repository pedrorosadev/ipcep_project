import 'package:flutter/material.dart';
import 'package:ipcep_project/routes/app_routes.dart';
import 'package:ipcep_project/views/Cadastrar.dart';
import 'package:ipcep_project/views/Conteudo_Curso.dart';
import 'package:ipcep_project/views/Home_Page.dart';
import 'package:ipcep_project/views/Login.dart';
import 'package:ipcep_project/views/Provas_Simulados.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IPCEP CURSOS',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.Home,
      routes: {
        AppRoutes.Home: (_) => const HomePage(),
        AppRoutes.Cadastrar: (_) => const Cadastrar(),
        AppRoutes.Login: (_) => const Login(),
        AppRoutes.Curso_CuidadorInfantil: (_) => const Conteudo_Curso(),
        AppRoutes.Provas_Simulados: (_) => const ProvasSimulados(),
        // AppRoutes.Curso_Covid19: (_) => const ;
        // AppRoutes.Curso_SaudeMental: (_) => ;
        // AppRoutes.Curso_SaudeDigital: (_) => const;
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
