import 'package:flutter/material.dart';

class RecoveryPage extends StatefulWidget {
  const RecoveryPage({super.key});

  @override
  State<RecoveryPage> createState() => _RecoveryPageState();
}

class _RecoveryPageState extends State<RecoveryPage> {
  String emailField = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                child: Image.asset('assets/images/logo.png'),
              ),
              Container(height: 14),
              Text(
                'Embalagens Retornáveis',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              Text(
                'Para iniciar o processo de recuperação de senha de acesso ao Embalagens Retornáveis, digite seu e-mail.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),
              Container(height: 14),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: TextField(
                  onChanged: (value) {
                    emailField = value;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'E-mail',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 14),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/');
                  },
                  child: const Text('Enviar'),
                ),
              ),
               SizedBox(
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/');
                  },
                  child: Text('Quero fazer o login!'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        _body(),
      ],
    ));
  }
}
