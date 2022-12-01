// To parse this JSON data, do
//
//     final producto = productoFromMap(jsonString);

import 'dart:convert';

class Comida {
  Comida({
    required this.disponible,
    this.imagen,
    required this.nombre,
    required this.precio,
    this.id,
  });

  bool disponible;
  String? imagen;
  String nombre;
  double precio;
  String? id;

  factory Comida.fromJson(String str) => Comida.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Comida.fromMap(Map<String, dynamic> json) => Comida(
        disponible: json["disponible"],
        imagen: json["imagen"],
        nombre: json["nombre"],
        precio: json["precio"].toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "disponible": disponible,
        "imagen": imagen,
        "nombre": nombre,
        "precio": precio,
      };

  Comida copy() => Comida(
      disponible: this.disponible,
      nombre: this.nombre,
      imagen: this.imagen,
      precio: this.precio,
      id: this.id
      );
}
