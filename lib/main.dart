import 'package:flutter/material.dart';
import 'package:ipcep_project/routes/app_routes.dart';
import 'package:ipcep_project/views/Cadastrar.dart';
import 'package:ipcep_project/views/Home_Page.dart';
import 'package:ipcep_project/views/Login.dart';

void main() {
  runApp(const MyApp());
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
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}