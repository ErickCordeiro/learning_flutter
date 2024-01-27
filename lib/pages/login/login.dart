import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String emailField = '';
  String passwordField = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (value) {
                    emailField = value;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'E-mail',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 14),
                TextField(
                  onChanged: (value) {
                    passwordField = value;
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    if (emailField == 'erickcordeiroa@gmail.com' &&
                        passwordField == 'erick2020') {
                      /** 
                       * The pushName or push in navigation go to
                       * next page with arrow for before page,
                       * now pushReplacemant and pushReplacemantName 
                       * destroy the before page.
                      **/

                      // ** Way correct do route navegation between pages **
                      Navigator.of(context).pushReplacementNamed('/home');

                      // ** Way manual do route navegation between pages **
                      // Navigator.of(context).pushReplacement(
                      //     MaterialPageRoute(builder: (context) => HomePage()));
                    }
                  },
                  child: const Text('Entrar'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
