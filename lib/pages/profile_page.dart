import 'package:flutter/material.dart';
import 'package:flutter_profile/models/user_model.dart';
 
class Profile extends StatelessWidget {
  const Profile({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Container(
        padding: const EdgeInsets.all(16), // optional for spacing
        child: Column(
          children: const [
            Text(
              'Hello, this is your profile!',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20), // spacing
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 133, 77, 64),
              radius: 30, // optional, to control the size
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 30,
              )),
            Column(
              children: [
                TableExample(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
 
class TableExample extends StatelessWidget {
  const TableExample({super.key});
 
  @override
  Widget build(BuildContext context) {
 
    UserModel  _usuario = UserModel(name: 'Jesús', age: 25, category: "Mayor de edad");
 
    return Table(
      border: TableBorder.all(),
      columnWidths: {
        0: FixedColumnWidth(100),
        1: FlexColumnWidth(),
      },
      children: [
        TableRow(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Nombre", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("${_usuario.name}"),
            ),
          ],
        ),
         TableRow(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Edad", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("${_usuario.age}"),
            ),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Categoria", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("${_usuario.category}"),
            ),
          ],
        ),
      ],
    );
  }
}