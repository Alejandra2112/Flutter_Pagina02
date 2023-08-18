import 'package:flutter/material.dart';
import 'package:usuarios_flutter/screen_views/login.dart';
import 'package:usuarios_flutter/screen_views/usuarios.dart';


class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppTower"),
        backgroundColor: Color.fromARGB(255, 87, 126, 255),
      ),
      body:Stack(
      alignment: Alignment.center,
      children: [
       const Image(image: NetworkImage('../assets/conjunto.jpg'),width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 72, vertical: 120),
          color: Colors.black.withOpacity(0.5),
          child: const Text(
            "'En nuestro conjunto residencial, encontrarás una comunidad que va más allá de lo ordinario. Cada espacio está pensado para fomentar la interacción, la relajación y la conexión con tus vecinos. Vive en un entorno que realmente refleja tus valores y estilo de vida.'",
            style: TextStyle(fontSize: 19.0, color: Colors.white),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const Padding(
              padding: EdgeInsets.all(7.0),
              child: DrawerHeader(
                
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        '../assets/ip.jpg'),
                      
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text(''),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.black,),
              title: const Text('Usuarios'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Usuarios()),
                );
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 360),
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.black,),
                title: const Text('Cerrar Sesión', ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const login()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}



