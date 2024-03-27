import 'package:flutter/material.dart';
import 'package:idelly/components/authentication/forgot_password.dart';
import 'package:idelly/components/authentication/sign_up.dart';

class LoginPage extends StatelessWidget {
  const LoginPage() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connexion'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
            child: Image(
              image: AssetImage('assets/images/logo.png'),
              width: 300.0, // Adjust width as needed
              height: 300.0, // Adjust height as needed
            ),
          ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Adresse e-mail',
                prefixIcon: const Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Mot de passe',
                prefixIcon: const Icon(Icons.password),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 25.0),
            SizedBox(
              height: 60,
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Implement sign-in logic
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFFE6007E),
                ),
                child: const Text('Connexion'),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                );
              },
              child: const Text('Mot de passe oublié?'),
            ),
            const SizedBox(height: 60.0),
            SizedBox(
              height: 60,
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF231C4D),
                ),
                child: const Text('Inscription'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
