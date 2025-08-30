import 'package:flutter/material.dart';
import 'package:flutter_profile/models/user_model.dart';

class Profile extends StatelessWidget {
  final UserModel user;

  // Constructor que recibe el usuario
  const Profile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Container(
        padding: const EdgeInsets.all(16), // Opcional para dar espacio
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 30, // Tamaño del avatar
                child: const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            Text(
              'Nombre: ${user.name}',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20), // Espaciado
            Text(
              'Edad: ${user.age}',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20), // Espaciado
            Text(
              'Categoría: ${user.category}',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20), // Espaciado
            
          ],
        ),
      ),
    );
  }
}
