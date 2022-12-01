import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Cupones extends StatelessWidget {
  const Cupones({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
    
      appBar: AppBar(
        title: Text('Cupones'),
      ),
      drawer: MenuLateral(),
      backgroundColor: Color.fromARGB(255, 161, 185, 159),
      body: ListView(
        children: [
                 Card(
    
    // Con esta propiedad modificamos la forma de nuestro card
    // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    
    // Con esta propiedad agregamos margen a nuestro Card
    // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
    margin: EdgeInsets.all(15),
    
    // Con esta propiedad agregamos elevación a nuestro card
    // La sombra que tiene el Card aumentará
    elevation: 10,

    // La propiedad child anida un widget en su interior
    // Usamos columna para ordenar un ListTile y una fila con botones
    child: Column(
      children: <Widget>[

        // Usamos ListTile para ordenar la información del card como titulo, subtitulo e icono
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('15% de descuento',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          subtitle: Text(
              '15% de descuento en toda la comida.',style: TextStyle( fontSize: 20)),
          leading: Image.asset('assets/estrella.png',height: 85),
        ),
        
        // Usamos una fila para ordenar los botones del card
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            GestureDetector(onTap: () => {
              CupertinoAlertDialog(
                title: Text('Canjeaste este cupon'),
                content: Image.asset('assets/estrella.png'),
                actions: [
                  CupertinoDialogAction(
                onPressed: () => (Navigator.of(context).pop()),
                child: Text("Aceptar"),
              ),
                ],
              )

            }, child: Text('Usar',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
           
          ],
        )
      ],
    ),
          ),
          SizedBox(height: 50,),       Card(
    
    // Con esta propiedad modificamos la forma de nuestro card
    // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    
    // Con esta propiedad agregamos margen a nuestro Card
    // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
    margin: EdgeInsets.all(15),
    
    // Con esta propiedad agregamos elevación a nuestro card
    // La sombra que tiene el Card aumentará
    elevation: 10,

    // La propiedad child anida un widget en su interior
    // Usamos columna para ordenar un ListTile y una fila con botones
    child: Column(
      children: <Widget>[

        // Usamos ListTile para ordenar la información del card como titulo, subtitulo e icono
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('15% de descuento',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          subtitle: Text(
              '15% de descuento en toda la comida.',style: TextStyle( fontSize: 20)),
          leading: Image.asset('assets/estrella.png',height: 85),
        ),
        
        // Usamos una fila para ordenar los botones del card
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            GestureDetector(onTap: () => {
              CupertinoAlertDialog(
                title: Text('Canjeaste este cupon'),
                content: Image.asset('assets/estrella.png'),
                actions: [
                  CupertinoDialogAction(
                onPressed: () => (Navigator.of(context).pop()),
                child: Text("Aceptar"),
              ),
                ],
              )

            }, child: Text('Usar',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
           
          ],
        )
      ],
    ),
          ),
          SizedBox(height: 50,),       Card(
    
    // Con esta propiedad modificamos la forma de nuestro card
    // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    
    // Con esta propiedad agregamos margen a nuestro Card
    // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
    margin: EdgeInsets.all(15),
    
    // Con esta propiedad agregamos elevación a nuestro card
    // La sombra que tiene el Card aumentará
    elevation: 10,

    // La propiedad child anida un widget en su interior
    // Usamos columna para ordenar un ListTile y una fila con botones
    child: Column(
      children: <Widget>[

        // Usamos ListTile para ordenar la información del card como titulo, subtitulo e icono
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('15% de descuento',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          subtitle: Text(
              '15% de descuento en toda la comida.',style: TextStyle( fontSize: 20)),
          leading: Image.asset('assets/estrella.png',height: 85),
        ),
        
        // Usamos una fila para ordenar los botones del card
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            GestureDetector(onTap: () => {
              CupertinoAlertDialog(
                title: Text('Canjeaste este cupon'),
                content: Image.asset('assets/estrella.png'),
                actions: [
                  CupertinoDialogAction(
                onPressed: () => (Navigator.of(context).pop()),
                child: Text("Aceptar"),
              ),
                ],
              )

            }, child: Text('Usar',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
           
          ],
        )
      ],
    ),
          ),
          SizedBox(height: 50,),       Card(
    
    // Con esta propiedad modificamos la forma de nuestro card
    // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    
    // Con esta propiedad agregamos margen a nuestro Card
    // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
    margin: EdgeInsets.all(15),
    
    // Con esta propiedad agregamos elevación a nuestro card
    // La sombra que tiene el Card aumentará
    elevation: 10,

    // La propiedad child anida un widget en su interior
    // Usamos columna para ordenar un ListTile y una fila con botones
    child: Column(
      children: <Widget>[

        // Usamos ListTile para ordenar la información del card como titulo, subtitulo e icono
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('15% de descuento',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          subtitle: Text(
              '15% de descuento en toda la comida.',style: TextStyle( fontSize: 20)),
          leading: Image.asset('assets/estrella.png',height: 85),
        ),
        
        // Usamos una fila para ordenar los botones del card
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            GestureDetector(onTap: () => {
              CupertinoAlertDialog(
                title: Text('Canjeaste este cupon'),
                content: Image.asset('assets/estrella.png'),
                actions: [
                  CupertinoDialogAction(
                onPressed: () => (Navigator.of(context).pop()),
                child: Text("Aceptar"),
              ),
                ],
              )

            }, child: Text('Usar',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
           
          ],
        )
      ],
    ),
          ),
          SizedBox(height: 50,),       Card(
    
    // Con esta propiedad modificamos la forma de nuestro card
    // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    
    // Con esta propiedad agregamos margen a nuestro Card
    // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
    margin: EdgeInsets.all(15),
    
    // Con esta propiedad agregamos elevación a nuestro card
    // La sombra que tiene el Card aumentará
    elevation: 10,

    // La propiedad child anida un widget en su interior
    // Usamos columna para ordenar un ListTile y una fila con botones
    child: Column(
      children: <Widget>[

        // Usamos ListTile para ordenar la información del card como titulo, subtitulo e icono
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('15% de descuento',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          subtitle: Text(
              '15% de descuento en toda la comida.',style: TextStyle( fontSize: 20)),
          leading: Image.asset('assets/estrella.png',height: 85),
        ),
        
        // Usamos una fila para ordenar los botones del card
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            GestureDetector(onTap: () => {
              CupertinoAlertDialog(
                title: Text('Canjeaste este cupon'),
                content: Image.asset('assets/estrella.png'),
                actions: [
                  CupertinoDialogAction(
                onPressed: () => (Navigator.of(context).pop()),
                child: Text("Aceptar"),
              ),
                ],
              )

            }, child: Text('Usar',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
           
          ],
        )
      ],
    ),
          ),
          SizedBox(height: 50,),       Card(
    
    // Con esta propiedad modificamos la forma de nuestro card
    // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    
    // Con esta propiedad agregamos margen a nuestro Card
    // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
    margin: EdgeInsets.all(15),
    
    // Con esta propiedad agregamos elevación a nuestro card
    // La sombra que tiene el Card aumentará
    elevation: 10,

    // La propiedad child anida un widget en su interior
    // Usamos columna para ordenar un ListTile y una fila con botones
    child: Column(
      children: <Widget>[

        // Usamos ListTile para ordenar la información del card como titulo, subtitulo e icono
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('15% de descuento',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          subtitle: Text(
              '15% de descuento en toda la comida.',style: TextStyle( fontSize: 20)),
          leading: Image.asset('assets/estrella.png',height: 85),
        ),
        
        // Usamos una fila para ordenar los botones del card
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            GestureDetector(onTap: () => {
              CupertinoAlertDialog(
                title: Text('Canjeaste este cupon'),
                content: Image.asset('assets/estrella.png'),
                actions: [
                  CupertinoDialogAction(
                onPressed: () => (Navigator.of(context).pop()),
                child: Text("Aceptar"),
              ),
                ],
              )

            }, child: Text('Usar',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
           
          ],
        )
      ],
    ),
          ),
          SizedBox(height: 50,),       Card(
    
    // Con esta propiedad modificamos la forma de nuestro card
    // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    
    // Con esta propiedad agregamos margen a nuestro Card
    // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
    margin: EdgeInsets.all(15),
    
    // Con esta propiedad agregamos elevación a nuestro card
    // La sombra que tiene el Card aumentará
    elevation: 10,

    // La propiedad child anida un widget en su interior
    // Usamos columna para ordenar un ListTile y una fila con botones
    child: Column(
      children: <Widget>[

        // Usamos ListTile para ordenar la información del card como titulo, subtitulo e icono
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('15% de descuento',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          subtitle: Text(
              '15% de descuento en toda la comida.',style: TextStyle( fontSize: 20)),
          leading: Image.asset('assets/estrella.png',height: 85),
        ),
        
        // Usamos una fila para ordenar los botones del card
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            GestureDetector(onTap: () => {
              CupertinoAlertDialog(
                title: Text('Canjeaste este cupon'),
                content: Image.asset('assets/estrella.png'),
                actions: [
                  CupertinoDialogAction(
                onPressed: () => (Navigator.of(context).pop()),
                child: Text("Aceptar"),
              ),
                ],
              )

            }, child: Text('Usar',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
           
          ],
        )
      ],
    ),
          ),
          SizedBox(height: 50,),       Card(
    
    // Con esta propiedad modificamos la forma de nuestro card
    // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    
    // Con esta propiedad agregamos margen a nuestro Card
    // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
    margin: EdgeInsets.all(15),
    
    // Con esta propiedad agregamos elevación a nuestro card
    // La sombra que tiene el Card aumentará
    elevation: 10,

    // La propiedad child anida un widget en su interior
    // Usamos columna para ordenar un ListTile y una fila con botones
    child: Column(
      children: <Widget>[

        // Usamos ListTile para ordenar la información del card como titulo, subtitulo e icono
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('15% de descuento',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          subtitle: Text(
              '15% de descuento en toda la comida.',style: TextStyle( fontSize: 20)),
          leading: Image.asset('assets/estrella.png',height: 85),
        ),
        
        // Usamos una fila para ordenar los botones del card
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            GestureDetector(onTap: () => {
              CupertinoAlertDialog(
                title: Text('Canjeaste este cupon'),
                content: Image.asset('assets/estrella.png'),
                actions: [
                  CupertinoDialogAction(
                onPressed: () => (Navigator.of(context).pop()),
                child: Text("Aceptar"),
              ),
                ],
              )

            }, child: Text('Usar',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
           
          ],
        )
      ],
    ),
          ),
          SizedBox(height: 50,),       Card(
    
    // Con esta propiedad modificamos la forma de nuestro card
    // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    
    // Con esta propiedad agregamos margen a nuestro Card
    // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
    margin: EdgeInsets.all(15),
    
    // Con esta propiedad agregamos elevación a nuestro card
    // La sombra que tiene el Card aumentará
    elevation: 10,

    // La propiedad child anida un widget en su interior
    // Usamos columna para ordenar un ListTile y una fila con botones
    child: Column(
      children: <Widget>[

        // Usamos ListTile para ordenar la información del card como titulo, subtitulo e icono
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('15% de descuento',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          subtitle: Text(
              '15% de descuento en toda la comida.',style: TextStyle( fontSize: 20)),
          leading: Image.asset('assets/estrella.png',height: 85),
        ),
        
        // Usamos una fila para ordenar los botones del card
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            GestureDetector(onTap: () => {
              CupertinoAlertDialog(
                title: Text('Canjeaste este cupon'),
                content: Image.asset('assets/estrella.png'),
                actions: [
                  CupertinoDialogAction(
                onPressed: () => (Navigator.of(context).pop()),
                child: Text("Aceptar"),
              ),
                ],
              )

            }, child: Text('Usar',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
           
          ],
        )
      ],
    ),
          ),
          SizedBox(height: 50,),       Card(
    
    // Con esta propiedad modificamos la forma de nuestro card
    // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    
    // Con esta propiedad agregamos margen a nuestro Card
    // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
    margin: EdgeInsets.all(15),
    
    // Con esta propiedad agregamos elevación a nuestro card
    // La sombra que tiene el Card aumentará
    elevation: 10,

    // La propiedad child anida un widget en su interior
    // Usamos columna para ordenar un ListTile y una fila con botones
    child: Column(
      children: <Widget>[

        // Usamos ListTile para ordenar la información del card como titulo, subtitulo e icono
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('15% de descuento',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          subtitle: Text(
              '15% de descuento en toda la comida.',style: TextStyle( fontSize: 20)),
          leading: Image.asset('assets/estrella.png',height: 85),
        ),
        
        // Usamos una fila para ordenar los botones del card
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            GestureDetector(onTap: () => {
              CupertinoAlertDialog(
                title: Text('Canjeaste este cupon'),
                content: Image.asset('assets/estrella.png'),
                actions: [
                  CupertinoDialogAction(
                onPressed: () => (Navigator.of(context).pop()),
                child: Text("Aceptar"),
              ),
                ],
              )

            }, child: Text('Usar',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
           
          ],
        )
      ],
    ),
          ),
          SizedBox(height: 50,),       Card(
    
    // Con esta propiedad modificamos la forma de nuestro card
    // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    
    // Con esta propiedad agregamos margen a nuestro Card
    // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
    margin: EdgeInsets.all(15),
    
    // Con esta propiedad agregamos elevación a nuestro card
    // La sombra que tiene el Card aumentará
    elevation: 10,

    // La propiedad child anida un widget en su interior
    // Usamos columna para ordenar un ListTile y una fila con botones
    child: Column(
      children: <Widget>[

        // Usamos ListTile para ordenar la información del card como titulo, subtitulo e icono
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('15% de descuento',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          subtitle: Text(
              '15% de descuento en toda la comida.',style: TextStyle( fontSize: 20)),
          leading: Image.asset('assets/estrella.png',height: 85),
        ),
        
        // Usamos una fila para ordenar los botones del card
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            GestureDetector(onTap: () => {
              CupertinoAlertDialog(
                title: Text('Canjeaste este cupon'),
                content: Image.asset('assets/estrella.png'),
                actions: [
                  CupertinoDialogAction(
                onPressed: () => (Navigator.of(context).pop()),
                child: Text("Aceptar"),
              ),
                ],
              )

            }, child: Text('Usar',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
           
          ],
        )
      ],
    ),
          ),
          SizedBox(height: 50,),       Card(
    
    // Con esta propiedad modificamos la forma de nuestro card
    // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    
    // Con esta propiedad agregamos margen a nuestro Card
    // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
    margin: EdgeInsets.all(15),
    
    // Con esta propiedad agregamos elevación a nuestro card
    // La sombra que tiene el Card aumentará
    elevation: 10,

    // La propiedad child anida un widget en su interior
    // Usamos columna para ordenar un ListTile y una fila con botones
    child: Column(
      children: <Widget>[

        // Usamos ListTile para ordenar la información del card como titulo, subtitulo e icono
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('15% de descuento',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          subtitle: Text(
              '15% de descuento en toda la comida.',style: TextStyle( fontSize: 20)),
          leading: Image.asset('assets/estrella.png',height: 85),
        ),
        
        // Usamos una fila para ordenar los botones del card
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            GestureDetector(onTap: () => {
              AlertDialog(
                title: Text('Canjeaste este cupon'),
                content: Image.asset('assets/estrella.png'),
                actions: [
                  CupertinoDialogAction(
                onPressed: () => (Navigator.of(context).pop()),
                child: Text("Aceptar"),
              ),
                ],
              )

            }, child: Text('Usar',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
           
          ],
        )
      ],
    ),
          ),
          SizedBox(height: 50,),
        ],
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