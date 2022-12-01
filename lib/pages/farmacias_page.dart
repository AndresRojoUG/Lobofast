import 'package:flutter/material.dart';
import 'package:productos_app/models/farmacias.dart';
import 'package:productos_app/pages/loading_page.dart';
import 'package:productos_app/services/farmacias_service.dart';
import 'package:productos_app/widgets/farmacias_card.dart';

import 'package:productos_app/widgets/producto_card.dart';
import 'package:provider/provider.dart';

class FarmaciasPage extends StatelessWidget {
  const FarmaciasPage({super.key});

  @override
  Widget build(BuildContext context) {
    final productoService = Provider.of<FarmaciaService>(context);
    if (productoService.isLoading) return LoadingPage();
    return Scaffold(
    
      appBar: AppBar(
        title: Text('Comida'),
      ),
      drawer: MenuLateral(),
      backgroundColor: Color.fromARGB(255, 38, 182, 25),
      body: ListView.builder(
         itemCount: productoService.productos.length,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
            onTap: () {
              productoService.productoSeleccionado =
                  productoService.productos[index].copy();
              Navigator.pushNamed(context, 'farmacia_card');
            },
            child: FarmaciasCard(
              producto: productoService.productos[index],
            )),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          productoService.productoSeleccionado =
              new Farmacias(disponible: false, nombre: '', precio: 0);
          Navigator.pushNamed(context, 'farmacia_card');
        },
      ),
    );
  }
}

class MenuLateral extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children:[
          new UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 31, 160, 31),
              ),
              
            
              accountName: Text("Usuario Nuevo"),
              accountEmail: Text("UsuarioNuevo@gmail.com"),
            currentAccountPicture: Image.asset('assets/lob.png'),
          ),
         
         ListTile(
          title: Text('Home'),
          leading: Icon(Icons.home),
         onTap: () {
           Navigator.of(context).pop();
           Navigator.pushNamed(context,'menu');
         },
         ),

            ListTile(
          title: Text('Pedidos'),
          leading: Icon(Icons.gif_box),
         onTap: () {
           Navigator.of(context).pop();
           Navigator.pushNamed(context,'pedido');
         },
         
         ),
          
          ListTile(
          title: Text('Desarrolladores'),
          leading: Icon(Icons.info),
         onTap: () {
           Navigator.of(context).pop();
           Navigator.pushNamed(context,'infor');
         },
         ),
           ListTile(
          title: Text('Salir'),
          leading: Icon(Icons.exit_to_app_rounded),
         onTap: () {
           Navigator.of(context).pop();
           Navigator.pushNamed(context,'login');
         },
         ),

                 ],
      ) ,
    );
  }
}