import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                //flex: 1,
                child: Row(
                  children: [
                    Image.asset('../../assets/images/logo.png'),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Instituto de Psicologia Clínica Educacional e Profissional',
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF00B6E6),
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                //flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Seja bem vindo !',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Informe os seus dados de acesso para entrar no aplicativo',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFF787993),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              Expanded(
                //flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        hintText: 'E-mail',
                        hintStyle: TextStyle(
                          color: Color(0xFF787993),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFDFDFE4),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF787993),
                          ),
                        ),
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'Senha',
                        hintStyle: TextStyle(
                          color: Color(0xFF787993),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFDFDFE4),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF787993),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                //flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          (25),
                        ),
                        color: const Color(0xFF00B6E6),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Entrar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Esqueceu a senha?',
                        style: TextStyle(
                          color: Color(0xFF00B6E6),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                //flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Ainda não possui uma conta?',
                      style: TextStyle(
                        color: Color(0xFF787993),
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Criar Agora',
                        style: TextStyle(
                          color: Color.fromARGB(255, 117, 225, 255),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
