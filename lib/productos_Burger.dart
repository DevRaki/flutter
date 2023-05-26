import 'package:flutter/material.dart';
import 'package:productos/sub_burgers/italian.dart';

class productos_Burger extends StatelessWidget {
  const productos_Burger({super.key});
  void agregar() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('XoXo Hamburguers'),
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
                    "Burger Menu",
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
                  "hamburguesa italiana",
                  style: TextStyle(fontSize: 20),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => italian(),
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
                  "25K",
                  style: TextStyle(fontSize: 20),
                )
              ])),
        ]),
      ),
    );
  }
}
