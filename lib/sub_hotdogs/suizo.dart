import 'package:flutter/material.dart';

class suizo extends StatelessWidget {
  const suizo({super.key});

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
                    'assets/images/hot.png',
                    width: 300,
                    height: 300,
                  ),
                ),
                Text("Precio: 20K",
                    textAlign: TextAlign.start,
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
                Text(
                    "Hot dog basado en la cultura suiza el cual contiene una deliciosa salchicha suiza, tocineta y ensalada",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500))
              ]))
        ]),
      ),
    );
  }
}
