import 'package:flutter/material.dart';
import 'package:productos/sub_hotdogs/suizo.dart';

class productos_Hotdog extends StatelessWidget {
  const productos_Hotdog({super.key});
  void agregar() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('XoXo Hot Dogs'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: agregar,
        label: Text("Agregar"),
        icon: Icon(Icons.add),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              padding: EdgeInsets.all(16),
              child: Title(
                  color: Colors.pink,
                  child: Text(
                    "Hot Dog Menu",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 255, 0, 242)),
                  ))),
          Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red, // Color del borde
                  width: 2.0, // Ancho del borde
                ),
                borderRadius:
                    BorderRadius.circular(8.0), // Radio de la esquina del borde
              ),
              child: Column(children: [
                Text(
                  "Hot Dog suizo",
                  style: TextStyle(fontSize: 20),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => suizo(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/images/hot.png',
                    width: 200,
                    height: 200,
                  ),
                ),
                Text(
                  "20K",
                  style: TextStyle(fontSize: 20),
                )
              ])),
        ]),
      ),
    );
  }
}
