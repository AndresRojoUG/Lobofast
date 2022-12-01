
import 'package:convex_bottom_bar/src/bar.dart';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class Infor extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width -80;
    
    return Scaffold(
    
      appBar: AppBar(
        title: Text('DESARROLLADORES'),
      ),
      drawer: MenuLateral(),
      body: ListView(
      children: 
        [Container(
          
         color: Color.fromARGB(255, 99, 218, 103),
         
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0,10, 0, 20),
              child: Column(children: [
                

    Text('DESARROLLADORES', style: TextStyle(
                  
                    color: Color.fromARGB(255, 42, 34, 179),
                    fontWeight: FontWeight.bold,
                    fontSize: 50
                  ),),
                  RichText(
  text: TextSpan(
    text: '',
    
    children: const <TextSpan>[
      TextSpan(text: 'Lobo', style: TextStyle(color: Color.fromARGB(255, 12, 121, 21),fontSize:60,fontWeight: FontWeight.bold )),
      TextSpan(text: 'Fast!!',style: TextStyle(color: Color.fromARGB(255, 66, 134, 212),fontSize:60,fontWeight: FontWeight.bold)),
    ],
  ),
),
Image.asset(
                 'assets/lob.png',
                          width: 280.0,
                          height: 100.0,
              ),
                SizedBox(height: 45,),
                Row(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 
                  children: [
                    Container(
                      width: 250,
                      height: 400,
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
                _BackgroundImage('assets/fer.png'),
                
              ],
            ),
                    ),
                     Container(
                     width: 250,
                      height: 300,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(117, 4, 17, 91),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0,7),
                          blurRadius: 10
                        ),]
                      ),
                      child: Column(
           
              children: [
              
     Padding(padding:const EdgeInsets.fromLTRB(10,10, 0, 0),
     
     child: Container(child: Column(
     children: [
     
    
    Text('NOMBRE:Goméz Ramírez María Fernanda', style: TextStyle(
                  
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                  ),),
                  SizedBox(height: 15,),
    Text('Edad: 22 años', style: TextStyle(
                  
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                     fontSize:25
                  ),),
                  SizedBox(height: 15,),
                  Text('Carrera:Desarrollo y Gestión de Software', style: TextStyle(
                  
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                     fontSize: 25
                  ),),
     ],
     ),)
    
     ),
     
             
              ],
            ),
                    ),
                    
    
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                          
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 
                  children: [
                    Container(
                      width: 250,
                      height: 400,
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
                _BackgroundImage('assets/rodrigo.png'),
                
              ],
            ),
                    ),
                     Container(
                     width: 250,
                      height: 300,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(117, 4, 17, 91),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0,7),
                          blurRadius: 10
                        ),]
                      ),
                      child: Column(
           
              children: [
                
     Padding(padding:const EdgeInsets.fromLTRB(10,10, 0, 0),
     child: Container(child: Column(
     children: [
    
    Text('NOMBRE:Lugardo Segundo Rodrigo', style: TextStyle(
                  
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                  ),),
                  SizedBox(height: 15,),
    Text('Edad: 22 años', style: TextStyle(
                  
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                     fontSize:25
                  ),),
                  SizedBox(height: 15,),
                  Text('Carrera:Desarrollo y Gestión de Software', style: TextStyle(
                  
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                     fontSize: 25
                  ),),
     ],
     ),)
    
     ),
     
             
              ],
            ),
                    ),
                    
    
                  ],
                ),
    
    SizedBox(height: 40,),
                   Row(
                          
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 
                  children: [
                    Container(
                      width: 250,
                      height: 400,
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
                _BackgroundImage('assets/juan.png'),
                
              ],
            ),
                    ),
                     Container(
                     width: 250,
                      height: 300,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(117, 4, 17, 91),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0,7),
                          blurRadius: 10
                        ),]
                      ),
                      child: Column(
           
              children: [
                
     Padding(padding:const EdgeInsets.fromLTRB(10,10, 0, 0),
     child: Container(child: Column(
     children: [
    
    Text('NOMBRE:Miranda Munguia Juan Silvestre', style: TextStyle(
                  
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                  ),),
                  SizedBox(height: 15,),
    Text('Edad: 122 años', style: TextStyle(
                  
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                     fontSize:25
                  ),),
                  SizedBox(height: 15,),
                  Text('Carrera:Desarrollo y Gestión de Software', style: TextStyle(
                  
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                     fontSize: 25
                  ),),
     ],
     ),)
    
     ),
     
             
              ],
            ),
                    ),
                    
    
                  ],
                ),
    
    
    SizedBox(height: 40,),
                   Row(
                          
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 
                  children: [
                    Container(
                      width: 250,
                      height: 400,
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
                _BackgroundImage('assets/an.png'),
                
              ],
            ),
                    ),
                     Container(
                     width: 250,
                      height: 300,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(117, 4, 17, 91),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0,7),
                          blurRadius: 10
                        ),]
                      ),
                      child: Column(
           
              children: [
                
     Padding(padding:const EdgeInsets.fromLTRB(10,10, 0, 0),
     child: Container(child: Column(
     children: [
    
    Text('NOMBRE:Rojo Ugalde Andres', style: TextStyle(
                  
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                  ),),
                  SizedBox(height: 15,),
    Text('Edad: 23 años', style: TextStyle(
                  
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                     fontSize:25
                  ),),
                  SizedBox(height: 15,),
                  Text('Carrera:Desarrollo y Gestión de Software', style: TextStyle(
                  
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                     fontSize: 25
                  ),),
     ],
     ),)
    
     ),
     
             
              ],
            ),
                    ),
                    
    
                  ],
                ),
              ]),
            ),
            
            
          ),
        ),
      ],
      )
    );
  }
}
/*

    )
                //////RODRIGO
     
 
 ///Juan
 ///
  Container(
                 width: 150,
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
            _BackgroundImage('assets/juan.png'),
            
          ],
        ),
                ),
                 Container(
                  width: 150,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(117, 4, 17, 91),
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
 child: Container(child: Stack(alignment: Alignment.center,
 children: [
Text('NOMBRE: Miranda Munguia Juan Silvestre', style: TextStyle(
              
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
              Text('Edad: 122 años', style: TextStyle(
              
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
              Text('Carrera:Desarrollo y Gestión de Software', style: TextStyle(
              
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
 ],
 ),)

 ),

  Container(
                 width: 150,
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
            _BackgroundImage('assets/an.png'),
            
          ],
        ),
                ),
                 Container(
                  width: 150,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(117, 4, 17, 91),
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
 child: Container(child: Stack(alignment: Alignment.center,
 children: [
Text('NOMBRE:Rojo Ugalde Andres', style: TextStyle(
              
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
              Text('Edad: 23 años', style: TextStyle(
              
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
              Text('Carrera:Desarrollo y Gestión de Software', style: TextStyle(
              
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
 ],
 ),)

 ),
 
         
          ],
        ),
                ),
 
         
          ],
        ),
                ),
         
          ],
        ),
                ),

 */
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
        child: url == "" || url == null
            ? Image(image: AssetImage('assets/no-image.png'), fit: BoxFit.cover)
            : FadeInImage(
                placeholder: AssetImage('assets/jar-loading.gif'),
                image: AssetImage(url!),
                fit: BoxFit.cover),
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