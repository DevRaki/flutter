import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demeter'),
        backgroundColor: Colors.orange,
      ),
      body: const SingleChildScrollView(
        child: MyStatefulWidget(),
      ),
    );
  }
}

enum SingingCharacter { Efectivo, QR, Tarjeta }

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String? value;
  SingingCharacter? _character = SingingCharacter.Efectivo;
  String? _selectedDocumentType;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              hintText: 'Producto',
            ),
            value: _selectedDocumentType,
            items: <String>['hamburguesa simple', 'hamburguesa triplequeso', 'hotdog']
                .map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _selectedDocumentType = newValue;
              });
            },
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Seleccione el producto';
              }
              return null;
            },
          ),

          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Ingrese cantidad',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Ingrese la cantidad';
              }
              return 'La cantidad ingresada es $value';
            },
          ),

          ListTile(
            title: const Text('Efectivo'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.Efectivo,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),

          ListTile(
            title: const Text('QR'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.QR,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),

          ListTile(
            title: const Text('Tarjeta'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.Tarjeta,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),

          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Ingrese precio',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Ingrese el precio';
              }
              return 'El precio ingresado es $value';
            },
          ),

          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 20,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Align(
              alignment: Alignment(0.0, -.3),
              child: ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {}
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                ),
                child: const Text('Realizar'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
