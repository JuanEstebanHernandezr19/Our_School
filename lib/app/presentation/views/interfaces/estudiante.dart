import 'package:flutter/material.dart';

class EstudiantesViews extends StatelessWidget {
  const EstudiantesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aprende Temas'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(5),
            color: Colors.blue,
            child: Row(
              children: <Widget>[
                Container(
                  width: 80,
                  height: 90,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  // Aquí puedes agregar la lógica para mostrar la foto.
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Nombre',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          _crearBotonTema("Matemáticas", "Aprende Matemáticas"),
          const SizedBox(height: 20),
          _crearBotonTema("Español", "Aprende Español"),
          const SizedBox(height: 20),
          _crearBotonTema("Inglés", "Aprende Inglés"),
          const SizedBox(height: 20),
          _crearBotonTema("Religión", "Aprende Religión"),
        ],
      ),
    );
  }

  Widget _crearBotonTema(String tema, String texto) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8),
    ),
      color: Colors.cyan,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              // Aquí puedes agregar la lógica para cada botón de tema.
            },
            child: Text(tema),
          ),
          const SizedBox(width: 40, height: 90,),
          Expanded(
            child: Text(
              texto,
              style: const TextStyle(fontSize: 18),


            ),
          ),
        ],
      ),
    );
  }
}