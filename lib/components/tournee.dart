import 'package:flutter/material.dart';

class TourneePage extends StatefulWidget {
  @override
  _TourneePageState createState() => _TourneePageState();
}

class _TourneePageState extends State<TourneePage> {
  late DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sélectionnez une date :',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2022),
                  lastDate: DateTime(2023),
                ).then((value) {
                  if (value != null) {
                    setState(() {
                      selectedDate = value;
                    });
                  }
                });
              },
              child: Text(
                selectedDate != null
                    ? 'Date sélectionnée : ${selectedDate.toString()}'
                    : 'Sélectionner une date',
              ),
            ),
            SizedBox(height: 20),
            if (selectedDate != null)
              Text(
                'Liste des rendez-vous pour le ${selectedDate.toString()}',
                style: TextStyle(fontSize: 18),
              ),
            // Ajoutez ici la logique pour afficher les rendez-vous selon la date sélectionnée
          ],
        ),
      ),
    );
  }
}