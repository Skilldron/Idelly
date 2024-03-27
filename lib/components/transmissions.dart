import 'package:flutter/material.dart';

class Post {
  final String patientName;
  final DateTime createdAt;
  final String createdBy;
  final String text;

  Post({
    required this.patientName,
    required this.createdAt,
    required this.createdBy,
    required this.text,
  });
}

class TransmissionsPage extends StatelessWidget {
  final List<Post> posts = [
    Post(
      patientName: 'Patient 1',
      createdAt: DateTime.now(),
      createdBy: 'John Doe',
      text: 'Lorem ipsum dolor sit amet.',
    ),
    Post(
      patientName: 'Patient 2',
      createdAt: DateTime.now(),
      createdBy: 'Jane Smith',
      text: 'Consectetur adipiscing elit.',
    ),
    // Ajoutez d'autres posts ici
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return ListTile(
            title: Text(post.patientName),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Créé le: ${post.createdAt.toString()}'),
                Text('Créé par: ${post.createdBy}'),
                Text(post.text),
              ],
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: TransmissionsPage(),
  ));
}