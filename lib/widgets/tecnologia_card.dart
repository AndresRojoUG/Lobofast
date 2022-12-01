import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:productos_app/models/tecnologia.dart';

class TecnologiaCard extends StatelessWidget {
  final Tecnologia producto;

  const TecnologiaCard({super.key, required this.producto});
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width -80;
    
    return Container(
      
 
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0,10, 0, 20),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             
              children: [
                Container(
                  width: 200,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0,7),
                      blurRadius: 10
                    ),]
                  ),
                  child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            _BackgroundImage(producto.imagen),
            if (!producto.disponible)
              Positioned(
                top: 0,
                left: 0,
                child: _NoDisponible(),
              )
          ],
        ),
                ),
                 Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(100, 6, 22, 112),
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0,7),
                      blurRadius: 10
                    ),]
                  ),
                  child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            
 Padding(padding:const EdgeInsets.fromLTRB(10,10, 0, 0),
 child: Text('NOMBRE: '+producto.nombre , style: TextStyle(
              
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),

 ),
 


           
          
            Positioned(
              top: 0,
              right: 0,
              child: _Precio(
                precio: producto.precio.toString(),
              ),
            ),
         
          ],
        ),
                ),
              ],
            ),
          ]),
        ),
        
        
      ),
    );
  }
}

class _BackgroundImage extends StatelessWidget {
  final String? url;
  const _BackgroundImage(this.url);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        width: double.infinity,
        height: 400,
        child: url == null
            ? Image(
                image: AssetImage('assets/no-image.png'),
                fit: BoxFit.cover,
              )
            : FadeInImage(
                placeholder: AssetImage('assets/jar-loading.gif'),
                 image: NetworkImage(url??'https://i.pinimg.com/originals/77/97/81/779781883952778b25974baa3cf7679c.gif'),
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}


class _DetallesProducto extends StatelessWidget {
  final String nombre;
  final String id;

  const _DetallesProducto({super.key, required this.nombre, required this.id});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 50),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: double.infinity,
        height: 40,
        // color: Colors.indigo,
        decoration: BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              nombre,
              style: TextStyle(
                fontSize: 10,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          
          ],
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('id', id));
  }
}

class _Precio extends StatelessWidget {
  final String precio;

  const _Precio({super.key, required this.precio});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.indigo,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
      ),
      child: FittedBox(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            '\$$precio',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
      ),
    );
  }
}

class _NoDisponible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(
        fit: BoxFit.contain,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'No Disponible',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      ),
      width: 50,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.yellow[800],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), bottomRight: Radius.circular(25))),
    );
  }
}
