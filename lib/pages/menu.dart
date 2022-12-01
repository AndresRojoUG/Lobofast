
import 'dart:typed_data';

import 'package:convex_bottom_bar/src/bar.dart';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home_page.dart';
import 'login_page.dart';
import 'package:soundpool/soundpool.dart';
import 'package:audioplayers/audioplayers.dart';



class Menu extends StatelessWidget {
  final player=AudioPlayer();
int selectedPage =0;
final _pageNo = ['menu','home','pedido','infor','login', ];
  @override
  Widget build(BuildContext context) {
    double  width=MediaQuery.of(context).size.width - 80;
    return Container(
      color: Color.fromARGB(255, 225, 128, 64),
      child: Center(
        
        child:Padding(
          
          
          padding: const EdgeInsets.fromLTRB(0,40,0,30),
          child: Column(
            
            
            children: [
             
       
              Column(
                
                children: [
                  SizedBox(height: 50),
                   RichText(
  text: TextSpan(
    text: '',
    
    children: const <TextSpan>[
      TextSpan(text: 'Lobo', style: TextStyle(color: Color.fromARGB(255, 12, 121, 21),fontSize:60,fontWeight: FontWeight.bold )),
      TextSpan(text: 'Fast!!',style: TextStyle(color: Color.fromARGB(255, 66, 134, 212),fontSize:60,fontWeight: FontWeight.bold)),
    ],
  ),
),
  SizedBox(height: 50),

                ],
              ),
             
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
               
                children: [
                
        
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'comida');
                  },
                  child: Container(
                  
                          
                          width: 200,
                          height: 100,
                          //color: Colors.blue,
                          decoration: BoxDecoration(
                            
                            color: Color.fromARGB(255, 191, 148, 18),
                            borderRadius: BorderRadius.circular(25),
                          
                            boxShadow: [
                              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, 7),
                  blurRadius: 10,
                              )
                            ],
                          ),
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                             Padding(padding: const EdgeInsets.fromLTRB(55,10, 0, 30),
                              child:  _BackgroundImage('assets/comida.png'),
                              
                              ),
                              _DetallesProducto(nombre: 'Comida'),
                          
                            ],
                            
                          ),
                          
                     
                    ),
                ),
  
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'tecnologia');
        },
        child: Container(
        
            width: 200,
            height: 100,
            //color: Colors.blue,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 222, 237, 14),
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, 7),
                  blurRadius: 10,
                )
              ],
            ),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Padding(padding: const EdgeInsets.fromLTRB(55,10, 0, 25),
                child:  _BackgroundImage('assets/tec.png'),
                
                ),
                _DetallesProducto(nombre: 'Tecnología'),
            
                
              ],
            ),
          
        ),
      ),
     

                ],
              ),
                SizedBox(height: 20),




              Wrap(
                runSpacing: 16,
                children: [
                 GestureDetector(
                    onTap: () {
          Navigator.pushNamed(context, 'farmacia');
        },
                   child: Container(
                   
                           
                           width: 400,
                           height: 100,
                           //color: Colors.blue,
                           decoration: BoxDecoration(
                             
                             color: Color.fromARGB(255, 16, 6, 87),
                             borderRadius: BorderRadius.circular(45),
                           
                             boxShadow: [
                               BoxShadow(
                                 color: Colors.black12,
                                 offset: Offset(0, 7),
                                 blurRadius: 10,
                               )
                             ],
                           ),
                           child: Stack(
                             alignment: Alignment.centerLeft,
                             children: [
                              
                               Text('   Farmacia',style: TextStyle(
                    
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25) ,),
                              Positioned(
                               bottom: 15,
                               right: 10,
                               child: Image.asset('assets/farmacia.png',height: 70,width:80,))
                             ],
                             
                           ),
                           
                      
                    ),
                 ),
                   GestureDetector(
                      onTap: () {
          Navigator.pushNamed(context, 'consolas');
        },
                     child: Container(
                     
                             margin: EdgeInsets.only(top: 30, bottom: 0),
                             width: 400,
                             height: 100,
                             //color: Colors.blue,
                             decoration: BoxDecoration(
                               
                               color: Color.fromARGB(255, 180, 82, 7),
                               borderRadius: BorderRadius.circular(45),
                             
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.black12,
                                   offset: Offset(0, 7),
                                   blurRadius: 10,
                                 )
                               ],
                             ),
                             child: Stack(
                               alignment: Alignment.centerLeft,
                               children: [
                               
                               Text('   Consolas',style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white) ,),
                                Positioned(
                                 bottom: 15,
                                 right: 10,
                                 child:   Image.asset('assets/consola-de-juego.png',height: 70,width: 80,),
                                 
                                 )
                               ],
                               
                             ),
                             
                        
                                     ),
                   ),
                  SizedBox(height: 200,),
                   Container(
  
          margin: EdgeInsets.only(top: 20, bottom: 0),
          width: 400,
          height: 50,
          //color: Colors.blue,
          decoration: BoxDecoration(
            
            color: Color.fromARGB(255, 96, 129, 203),
            borderRadius: BorderRadius.circular(45),
          
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0, 7),
                blurRadius: 10,
              )
            ],
          ),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              
               Text('   Más categorías',style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white) ,),
             Positioned(
              bottom: 0,
              right: 0,
              child: FloatingActionButton(
                heroTag: 'btn3',
        child: Icon(Icons.door_sliding),
        onPressed: () {
          Navigator.pushNamed(context, 'home');
        },
      ),)
            ],
            
          ),
          
     
                  ),
                   Container(
  
          margin: EdgeInsets.only(top: 10, bottom: 0),
          width: 400,
          height: 50,
          //color: Colors.blue,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 112, 16, 16),
            
            borderRadius: BorderRadius.circular(45),
          
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0, 7),
                blurRadius: 10,
              )
            ],
          ),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
             
             Text('   Productos aleatorios',style:TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold) ,),
             Positioned(
              bottom: 0,
              right: 0,
              child: FloatingActionButton(
                heroTag: 'btn3s',
        child: Icon(Icons.accessibility_sharp),
        onPressed: () {
          Navigator.pushNamed(context, 'home');
        },
      ),)
            ],
            
          ),
          
     
                  ),
     
                ],
              ),
              SizedBox(height: 100,),
              Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
               
                children: [
                GestureDetector(
                    onTap: () {
          Navigator.pushNamed(context, 'ventas');
        },
                  child: Container(
                  
                          
                          width: 200,
                          height: 100,
                          //color: Colors.blue,
                         
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Padding(padding: const EdgeInsets.fromLTRB(55,10, 0, 20),
                              child:  _BackgroundImage('assets/grafico-de-barras.png'),
                              
                              ),
                              _DetallesProducto(nombre: 'Grafíca'),
                         
                            ],
                            
                          ),
                          
                     
                    ),
                ),
  
      GestureDetector(
          onTap: () {
          Navigator.pushNamed(context, 'cupones');
        },
        child: Container(
        
            width: 200,
            height: 100,
            //color: Colors.blue,
           
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Padding(padding: const EdgeInsets.fromLTRB(55,10, 0, 20),
                child:  _BackgroundImage('assets/estrella.png'),
                
                ),
               
                _DetallesProducto(nombre: 'cupones'),
              
              
                
              ],
            ),
          
        ),
      ),

    
     

                ],
              ),
              SizedBox(height: 70,),
              Container(
                child: ConvexAppBar(
        style: TabStyle.react,
        items: [
          TabItem(icon: Icons.home),
          TabItem(icon: Icons.production_quantity_limits_outlined),
            TabItem(icon: Icons.add_box_rounded),
           TabItem(icon: Icons.info_outline),
          TabItem(icon: Icons.exit_to_app_outlined),
         
        ],
        initialActiveIndex: 1,
        onTap: (int i) => 
        Navigator.pushNamed(context, _pageNo[i])
      ),
              ),
            ],
          ),
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
      width: 80,
        height: 70,
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

class _DetallesProducto extends StatelessWidget {
  final String nombre;
  

  const _DetallesProducto({super.key, required this.nombre});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 60),
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
                fontSize: 15,
                color: Colors.white,
                
              ),
             
            ),
            
          ],
        ),
      ),
    );
  }
}