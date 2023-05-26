import 'package:flutter/material.dart';

class italian extends StatelessWidget {
  const italian({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('XoXo Hamburguers'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              width: 400,
              child: Column(children: [
                Title(
                    color: Colors.pink,
                    child: Text(
                      "Hamburguesa Italiana",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 255, 0, 242)),
                    )),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/burger.png',
                    width: 300,
                    height: 300,
                  ),
                ),
                Text("Precio: 25K",
                    textAlign: TextAlign.start,
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
                Text(
                    "Deliciosa hamburguesa que cuenta con XKg de carne, pan artesanal de la mejor calidad, aguacate, albaca y salsa de queso chedar",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500))
              ]))
        ]),
      ),
    );
  }
}
