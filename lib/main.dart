import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  String nama = 'Nadia';

  void ubahNama() {
    setState(() {
      nama = 'Nadia Hebat!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplikasi Saya'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              nama,
              style: const TextStyle(
                fontSize: 25,
              ),
            ),

            ElevatedButton(
              onPressed: ubahNama,
              child: const Text('Klik Saya'),
            ),
          ],
        ),
      ),
    );
  }
}