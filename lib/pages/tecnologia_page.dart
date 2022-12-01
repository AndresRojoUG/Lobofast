import 'package:flutter/material.dart';
import 'package:productos_app/models/tecnologia.dart';
import 'package:productos_app/pages/loading_page.dart';
import 'package:productos_app/services/tecnologia_service.dart';

import 'package:provider/provider.dart';

import '../widgets/tecnologia_card.dart';

class TecnologiaPage extends StatelessWidget {
  const TecnologiaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final productoService = Provider.of<TecnologiaService>(context);
    if (productoService.isLoading) return LoadingPage();
    return Scaffold(
    
      appBar: AppBar(
        title: Text('Tecnologia'),
      ),
      drawer: MenuLateral(),
      backgroundColor: Color.fromARGB(255, 38, 182, 25),
      body: ListView.builder(
         itemCount: productoService.productos.length,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
            onTap: () {
              productoService.productoSeleccionado =
                  productoService.productos[index].copy();
              Navigator.pushNamed(context, 'tec');
            },
            child: TecnologiaCard(
              producto: productoService.productos[index],
            )),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          productoService.productoSeleccionado =
              new Tecnologia(disponible: false, nombre: '', precio: 0);
          Navigator.pushNamed(context, 'tec');
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