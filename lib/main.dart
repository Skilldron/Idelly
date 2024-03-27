import 'package:flutter/material.dart';
import 'package:idelly/components/authentication/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Idelly',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFE6007E)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Idelly home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gradient background
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF662483), Color(0xFFE6007E)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          // Centered logo
          const Center(
            child: Image(
              image: AssetImage('assets/images/logo-white.png'),
              width: 300.0, // Adjust width as needed
              height: 300.0, // Adjust height as needed
            ),
          ),
          // Positioned button centered horizontally with reduced width
          Positioned(
            bottom: 20.0,
            left: 100.0,
            right: 100.0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.25,
              height: 50.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                  side: const BorderSide(color: Colors.white, width: 2.0),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 16.0),
                ),
                child: const Text('Se connecter'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
