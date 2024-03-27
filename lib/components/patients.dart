import 'package:flutter/material.dart';

class PatientsPage extends StatefulWidget {
  @override
  _PatientsPageState createState() => _PatientsPageState();
}

class _PatientsPageState extends State<PatientsPage> {
  List<String> patients = [
    'Patient 1',
    'Patient 2',
    'Patient 3',
    // Ajoutez d'autres patients ici
  ];

  List<String> filteredPatients = [];

  @override
  void initState() {
    super.initState();
    filteredPatients = patients;
  }

  void filterPatients(String query) {
    setState(() {
      filteredPatients = patients
          .where((patient) =>
              patient.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: filterPatients,
              decoration: InputDecoration(
                labelText: 'Rechercher un patient',
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredPatients.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(filteredPatients[index]),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Ajoutez ici la logique pour créer un nouveau patient
        },
        child: Icon(Icons.add),
      ),
    );
  }
}