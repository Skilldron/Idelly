import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inscription'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
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
            const TextField(
              decoration: InputDecoration(
                labelText: 'Identifiant',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 16.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Adresse e-mail',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 16.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Mot de passe',
                prefixIcon: Icon(Icons.password),
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
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
                child: const Text('Inscription'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}