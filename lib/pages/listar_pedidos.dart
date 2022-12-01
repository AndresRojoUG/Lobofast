import 'package:flutter/material.dart';

class Listarpedidos extends StatelessWidget {
  List<String> pedidos = [
    'MArio, transferencia',
    'Fernanda, pizza',
    'Armando, lavanderia',
    'Julio, comida',
    'Rocio, transporte',
    'Juan, papeleria',
    'Andres, equipo de laboratorio',
    'Carlos, Comida'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(
            child: Text(
              "Lista de Pedidos",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: pedidos.length,
          itemBuilder: (BuildContext context, int index) {
            final name = pedidos[index];
            return ListTile(
              title: Text(name),
              leading: Icon(Icons.markunread_mailbox),
              onTap: () {},
            );
          },
        ));
  }
}
