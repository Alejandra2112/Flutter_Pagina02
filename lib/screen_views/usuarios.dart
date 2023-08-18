import 'package:flutter/material.dart';

class Usuarios extends StatefulWidget {
  const Usuarios({Key? key}) : super(key: key);

  @override
  _UsuariosState createState() => _UsuariosState();
}

class _UsuariosState extends State<Usuarios> {
  String dropvalueTD = 'CC';
  List<String> Td = ['CC', 'CE'];

  final documento = TextEditingController();
  final nombre = TextEditingController();
  final apellido = TextEditingController();
  final correo = TextEditingController();
  final telefono = TextEditingController();

  String dropdownValue = 'Residente';
  List<String> roles = ['Administrador', 'Residente', 'Vigilante'];

  List<String> informacionusuarios = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Usuarios"),
        backgroundColor: Color.fromARGB(255, 87, 126, 255),
      ),
      body: ListView(
        children: [
          Container(
             margin: EdgeInsets.symmetric(horizontal: 90, vertical: 120),
            child: Column(
              children: [
                const Center(
                  child: Text(
                    "Registro de Usuario",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButton<String>(
                              value: dropvalueTD,
                              items: Td.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Container(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Row(
                                      children: [
                                        Text("Tipo de Documento:"),
                                        SizedBox(width: 375),
                                        Text(
                                          value,
                                          style: const TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropvalueTD = newValue!;
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: documento,
                                obscureText: false,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Documento',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: nombre,
                                obscureText: false,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Nombre',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: apellido,
                                obscureText: false,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Apellido',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: correo,
                                obscureText: false,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Correo',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: telefono,
                                obscureText: false,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Teléfono',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButton<String>(
                              value: dropdownValue,
                              items: roles.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Container(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Row(
                                      children: [
                                        Text("Rol:"),
                                        SizedBox(width: 417),
                                        Text(
                                          value,
                                          style: const TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
              SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      informacionusuarios = [
                        "Tipo de documento: $dropvalueTD",
                        "Documento: ${documento.text}",
                        "Nombre: ${nombre.text}",
                        "Apellido: ${apellido.text}",
                        "Correo: ${correo.text}",
                        "Teléfono: ${telefono.text}",
                        "Rol: $dropdownValue",
                      ];
                      for (int i = 0; i < informacionusuarios.length; i++) {
                        print(informacionusuarios[i]);
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 87, 126, 255),
                  ),
                  child: Text("Guardar"),
                ),
                SizedBox(height: 20),
                const Text("Información del Usuario Registrado:"),
                for (int i = 0; i < informacionusuarios.length; i++)
                  Text(informacionusuarios[i]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
