import 'package:flutter/material.dart';
import 'package:productos_app/models/tecnologia.dart';


import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';


class TecnologiaService extends ChangeNotifier {
  final String _baseUrl = "productos-6194b-default-rtdb.firebaseio.com";


  final List<Tecnologia> productos = [];

  bool isLoading = true;
  bool isSaving = false;

  Tecnologia? productoSeleccionado;

  File? newPictureFile;

  //constructor
  TecnologiaService() {
    this.obtenerProductos();
  }

  //metdo que obtiene los productos de la bD de
  Future obtenerProductos() async {
    this.isLoading = true;
    notifyListeners();
    final url = Uri.https(_baseUrl, 'tecnologia.json');
    final resp = await http.get(url);

    final Map<String, dynamic> productosMap = json.decode(resp.body);
    // print(productosMap);

    productosMap.forEach((key, value) {
      final productoTemp = Tecnologia.fromMap(value);
      productoTemp.id = key;
      this.productos.add(productoTemp);
    });

    this.isLoading = false;
    notifyListeners();

    // print(this.productos[0].nombre);

    return this.productos;
  }

   

  //metodo para actualizar un producto n la BD
  Future<String> updateProducto(Tecnologia producto) async {
    final url = Uri.https(_baseUrl, 'tecnologia/${producto.id}.json');

    final resp = await http.put(url, body: producto.toJson());

    final decodeData = resp.body;
    print(decodeData);

    //actualizamos estado de producto
    final index =
        this.productos.indexWhere((element) => element.id == producto.id);
    this.productos[index] = producto;

    return producto.id!;
  }

  //método para crear o actualizar un producto
  Future saveOrCreateProducto(Tecnologia producto) async {
    isSaving = true;
    notifyListeners();

    if (producto.id == null) {
      //producto nuevo
      await this.createProducto(producto);
    } else {
      //actualizar
      await this.updateProducto(producto);
    }

    isSaving = false;
    notifyListeners();
  }

  //metodo para crear un producto nuevo
  Future<String> createProducto(Tecnologia producto) async {
    final url = Uri.https(_baseUrl, 'tecnologia.json');
    final resp = await http.post(url, body: producto.toJson());
    final decodedData = json.decode(resp.body);

    producto.id = decodedData['name'];
    this.productos.add(producto);

    return producto.id!;
  }

  void updateImagen(String path) {
    this.productoSeleccionado!.imagen = path;
    this.newPictureFile = File.fromUri(Uri(path:path,
   ));
    print('aquiiii:: ${newPictureFile}');

    notifyListeners();
  }

 
  //metodo que sube la imagen a cluosfile
  Future<String?> uploadImage() async {
    if (this.newPictureFile == null) return null;

    this.isSaving = true;
    notifyListeners();

    final url = Uri.parse(
        'https://api.cloudinary.com/v1_1/dpwz75qgr/image/upload?upload_preset=qp2mj0kp');
    final imageUploadRequest = http.MultipartRequest('POST', url);
    final file =
        await http.MultipartFile.fromPath('file', newPictureFile!.path);
    imageUploadRequest.files.add(file);

    final streamResponse = await imageUploadRequest.send();
    final resp = await http.Response.fromStream(streamResponse);

    //print(resp.body);
    //validamos que obtengamos una respuesta satisfactoria
    if (resp.statusCode != 200 && resp.statusCode != 201) {
      print('Error en la petición');
      return null;
    }

    this.newPictureFile = null;

    final decodedData = json.decode(resp.body);
    return decodedData['secure_url'];
  }
}

