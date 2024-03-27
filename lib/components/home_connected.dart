import 'package:flutter/material.dart';
import 'package:idelly/components/messagerie.dart';
import 'package:idelly/components/patients.dart';
import 'package:idelly/components/tournee.dart';
import 'package:idelly/components/transmissions.dart';

class HomeConnectedPage extends StatefulWidget {
  const HomeConnectedPage({Key? key}) : super(key: key);

  @override
  State<HomeConnectedPage> createState() => _HomeConnectedPageState();
}

class _HomeConnectedPageState extends State<HomeConnectedPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Idelly'),
      ),
      body: _buildBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Ajouter',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: 'Tournée',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Patients',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send),
            label: 'Transmissions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messagerie',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  Widget _buildBody() {
    switch (_selectedIndex) {
      case 1:
        return _buildTourneePage();
      case 2:
        return _buildPatientsPage();
      case 3:
        return _buildTransmissionsPage();
      case 4:
        return _buildMessageriePage();
      default:
        return _buildTourneePage();
    }
  }

  // Remplacez les fonctions _buildPage par vos propres widgets de page

  Widget _buildTourneePage() =>  TourneePage();
  Widget _buildPatientsPage() => PatientsPage();
  Widget _buildTransmissionsPage() => TransmissionsPage();
  Widget _buildMessageriePage() => MessageriePage();
}