import 'package:flutter/material.dart';
import 'package:usuarios_flutter/screen_views/inicio.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _LoginState();
}

class _LoginState extends State<login> {
  final user = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("../assets/conjunto.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 370, vertical: 100),
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: const Color.fromARGB(129, 255, 255, 255),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.4),
                    spreadRadius: 10,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Container(
                margin: EdgeInsets.all(45),
                child: Column(
                  children: [
                    Text('Iniciar Sesión', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                    SizedBox(height: 20),
                    Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: TextField(
                    controller: user,
                    obscureText: false,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Usuario',
                      labelStyle: TextStyle(color: Colors.black), 
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                
                  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    controller: password,
                    obscureText: true,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Contraseña',
                      labelStyle: TextStyle(color: Colors.black), 
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),


                    const SizedBox(height: 15,),
                    FloatingActionButton(
                      backgroundColor: Colors.indigo,
                      onPressed: () {
                        if (user.text == '' || password.text == '') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Usuario o Contraseña vacíos"),
                            ),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Inicio()),
                          );
                        }
                      },
                      child: const Icon(Icons.apartment),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
