import 'package:flutter/material.dart';
import 'package:productos_app/models/farmacias.dart';
import 'package:productos_app/pages/comida.dart';
import 'package:productos_app/pages/comida_page.dart';
import 'package:productos_app/pages/consolas.dart';
import 'package:productos_app/pages/consolas_page.dart';
import 'package:productos_app/pages/cupones.dart';
import 'package:productos_app/pages/farmacias.dart';
import 'package:productos_app/pages/graficos.dart';
import 'package:productos_app/pages/home_page.dart';
import 'package:productos_app/pages/informacion.dart';
import 'package:productos_app/pages/listar_pedidos.dart';
import 'package:productos_app/pages/login_page.dart';
import 'package:productos_app/pages/menu.dart';
import 'package:productos_app/pages/producto_page.dart';
import 'package:productos_app/pages/register_page.dart';
import 'package:productos_app/pages/tec_page.dart';
import 'package:productos_app/pages/tecnologia_page.dart';
import 'package:productos_app/services/auth_service.dart';
import 'package:productos_app/services/comida_service.dart';
import 'package:productos_app/services/consolas_service.dart';
import 'package:productos_app/services/farmacias_service.dart';
import 'package:productos_app/services/productos_service.dart';
import 'package:productos_app/services/tecnologia_service.dart';
import 'package:provider/provider.dart';

import 'pages/farmacias_page.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductoService()),
         ChangeNotifierProvider(create: (_) => TecnologiaService()),
        ChangeNotifierProvider(create: (_) => AuthService()),
         ChangeNotifierProvider(create: (_) => ComidaService()),
         ChangeNotifierProvider(create: (_) =>FarmaciaService()),
         ChangeNotifierProvider(create: (_) => ConsolaService())
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LoboFast',
      initialRoute: 'login',
      routes: {
        'login': (_) => LoginPage(),
         'pedido': (_) => Listarpedidos(),
        'home': (_) => HomePage(),
        'producto': (_) => ProductoPage(),
        'menu': (_) => Menu(),
        'infor': (_) =>Infor(),
        'register': (_) => RegisterPage(),
        'tecnologia': (_) => TecnologiaPage(),
         'tec': (_) => TecPage(),
          'comida': (_) => ComidaPage(),
         'comida_card': (_) => ComiPage(),
         'farmacia': (_) => FarmaciasPage(),
         'farmacia_card': (_) => FarmaciaPage(),
         'consolas': (_) => ConsolasPage(),
         'consola_card': (_) => ConsolaPage(),
         'ventas': (_) => Grafico(),
          'cupones': (_) => Cupones(),
        
      },
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: Color.fromARGB(186, 15, 13, 88),
          appBarTheme: AppBarTheme(color: Color.fromARGB(255, 6, 22, 109), elevation: 0),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Color.fromARGB(255, 9, 24, 112),
            elevation: 0,
          )),
    );
  }
}
