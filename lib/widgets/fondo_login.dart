import 'package:flutter/material.dart';

class Fondo_Login extends StatelessWidget {
final Widget child;

  const Fondo_Login({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          
          SafeArea(

            ///https://www.google.com/url?sa=i&url=https%3A%2F%2Femojiterra.com%2Fes%2Fcara-de-lobo%2F&psig=AOvVaw2hmPJ94Ev7fCDO57eVOoZN&ust=1666709656335000&source=images&cd=vfe&ved=0CAoQjRxqFwoTCPiFl8CP-foCFQAAAAAdAAAAABAD
            child: Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              child: Image.asset(
                 'assets/lob.png',
                          width: 80.0,
                          height: 300.0,
              ),
            ),
          ),
          this.child
        ],
      ),
    );
  }
}

class _PurpleBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(62, 63, 156, 1),
            Color.fromRGBO(90, 70, 178, 1),
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            child: _Esfera(),
            top: 50,
            left: 300,
          ),
          Positioned(
            child: _Esfera(),
            top: 50,
            left: 10,
          ),
          Positioned(
            child: _Esfera(),
            top: 220,
            left: 10,
          ),
          Positioned(
            child: _Esfera(),
            top: 220,
            left: 300,
          ),
          Positioned(
            child: _Esfera(),
            top: 120,
            left: 150,
          ),
        ],
      ),
    );
  }
}

class _Esfera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Color.fromRGBO(255, 255, 255, 0.05),
      ),
    );
  }
}
