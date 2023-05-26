import 'package:productos/productos_Burger.dart';
import 'package:flutter/material.dart';
import 'package:productos/productos_Hotdogs.dart';

void agregar() {}

class productos extends StatelessWidget {
  const productos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.orange,
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Catálogo productos'),
      color: Color.fromARGB(11, 209, 6, 158),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: agregar,
        label: Text("Agregar"),
        icon: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Title(
                color: Colors.blue,
                child: Text('Productos',
                    style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 255, 0, 242),
                        fontSize: 30))),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => productos_Burger(),
                  ),
                );
              },
              child: Image.asset(
                'assets/images/burger.png',
                width: 200,
                height: 200,
              ),
            ),
            Text(
              'HAMBURGER',
              style: (const TextStyle(fontSize: 20)),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => productos_Hotdog(),
                  ),
                );
              },
              child: Image.asset(
                'assets/images/hot.png',
                width: 150,
                height: 150,
              ),
            ),
            Text('HOT DOGS', style: (const TextStyle(fontSize: 20))),
          ],
        ),
      ),
    );
  }
}
