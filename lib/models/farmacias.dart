// To parse this JSON data, do
//
//     final producto = productoFromMap(jsonString);

import 'dart:convert';

class Farmacias {
  Farmacias({
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

  factory Farmacias.fromJson(String str) => Farmacias.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Farmacias.fromMap(Map<String, dynamic> json) => Farmacias(
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

  Farmacias copy() => Farmacias(
      disponible: this.disponible,
      nombre: this.nombre,
      imagen: this.imagen,
      precio: this.precio,
      id: this.id);
}
