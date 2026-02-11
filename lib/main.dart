import 'package:flutter/material.dart';

void main() => runApp(LibreriaCristiana());

class LibreriaCristiana extends StatelessWidget {
  const LibreriaCristiana({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Editorial(),
    );
  }
} //fin aplicacion libreria

class Editorial extends StatelessWidget {
  const Editorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'liberia cristiana Dominguez 6:J',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.camera_alt, color: Color.fromARGB(255, 252, 164, 164)),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.book, color: Color.fromARGB(255, 255, 181, 181)),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.language, color: Color.fromARGB(255, 255, 191, 191)),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // REEMPLAZA LOS LINKS DE ABAJO POR TUS URLS REALES
            crearTarjeta("Libreria cristiana jorge", "Explorando Libros", "https://raw.githubusercontent.com/Jorge-Dominguez-0486/imagenes-para-flutter-6J-11-02-2026/refs/heads/main/libreria1.png"),
            crearTarjeta("Libros digitales ", "Aprendiendo de la historia", "https://raw.githubusercontent.com/Jorge-Dominguez-0486/imagenes-para-flutter-6J-11-02-2026/refs/heads/main/libreria2.png"),
            crearTarjeta("Tu nuevo pazatiempo", "Cristo es la vida", "https://raw.githubusercontent.com/Jorge-Dominguez-0486/imagenes-para-flutter-6J-11-02-2026/refs/heads/main/libreria3.png"),
          ],
        ),
      ),
    );
  }

  // Ahora recibe 'urlImagen' en lugar de 'id'
  Widget crearTarjeta(String titulo, String subtitulo, String urlImagen) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 16),
      color: const Color(0xFFFF8A80), // Rojo claro / Coral
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(urlImagen), // Usando la URL personalizada
        ),
        title: Text(
          titulo,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitulo,
          style: const TextStyle(color: Colors.white70),
        ),
        trailing: const Icon(
          Icons.favorite,
          color: Colors.grey,
        ),
      ),
    );
  }
} //fin clase editorial