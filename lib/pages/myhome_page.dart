import 'package:flutter/material.dart';
import 'package:flutter_profile/pages/profile_page.dart';
import 'package:flutter_profile/models/user_model.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  // Lista de usuarios de ejemplo
  final List<UserModel> users = [
    UserModel(name: 'Jesús', age: 25, category: "Mayor de edad"),
    UserModel(name: 'Carlos', age: 30, category: "Mayor de edad"),
    UserModel(name: 'Ana', age: 22, category: "Mayor de edad"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: ListView.builder(
        itemCount: users.length,  // Cantidad de usuarios en la lista
        itemBuilder: (context, index) {
          final user = users[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text("${user.name}"),  // Nombre del usuario
              trailing: TextButton(
                onPressed: () {
                  // Pasar el usuario seleccionado a la pantalla de perfil
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Profile(user: user),
                    ),
                  );
                },
                child: const Text('Ver perfil'),
              ),
            ),
          );
        },
      ),
    );
  }
}
