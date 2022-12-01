import 'package:flutter/material.dart';

import 'package:productos_app/models/tecnologia.dart';
import 'package:provider/provider.dart';


class TecnologiaFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();

  Tecnologia producto;
  TecnologiaFormProvider(this.producto);
  bool isValidForm() {
    print(producto.nombre);
    print(producto.precio);
    print(producto.disponible);
    return formKey.currentState?.validate() ?? false;
  }

  updateDisponible(bool value) {
    print(value);
    this.producto.disponible = value;
    notifyListeners();
  }
}
