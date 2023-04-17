import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ipcep_project/routes/app_routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
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
    );
  }
}
