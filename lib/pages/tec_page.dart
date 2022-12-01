import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:productos_app/providers/tecnologia_form_provider.dart';
import 'package:productos_app/services/tecnologia_service.dart';



import 'package:productos_app/widgets/producto_imagen.dart';
import 'package:provider/provider.dart';


class TecPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productoService = Provider.of<TecnologiaService>(context);
    //return _ProductoPageBody(productoService: productoService);
    return ChangeNotifierProvider(
      create: (_) =>
          TecnologiaFormProvider(productoService.productoSeleccionado!),
      child: _ProductoPageBody(
        productoService: productoService,
      ),
    );
  }
}

class _ProductoPageBody extends StatelessWidget {
  const _ProductoPageBody({
    Key? key,
    required this.productoService,
  }) : super(key: key);

  final TecnologiaService productoService;

  @override
  Widget build(BuildContext context) {
    final productoFormProvider = Provider.of<TecnologiaFormProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ProductoImagen(
                    url: productoService.productoSeleccionado!.imagen,
                  ),
                  Positioned(
                    top: 60,
                    left: 20,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        size: 40,
                        color: Colors.white,
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                  Positioned(
                    top: 60,
                    right: 20,
                    child: IconButton(
                      icon: Icon(Icons.camera_alt_outlined,
                          size: 40, color: Colors.white),
                      onPressed: () async {
                        final picker = new ImagePicker();
                        final PickedFile? pickedFile = await picker.getImage(
                          source: ImageSource.camera,
                          imageQuality: 100,
                        );
                        if (pickedFile == null) {
                          print('No se selecciono nada');
                          return;
                        }

                        print('image: ${pickedFile.path}');

                        productoService.updateImagen(pickedFile.path);
                         
                      },
                    ),
                  ),
                ],
              ),
              _ProductoForm(),
           Image.asset('assets/lob.png',
             width: 200.0,
                          height: 200,),
                            RichText(
  text: TextSpan(
    text: '',
    
    children: const <TextSpan>[
      TextSpan(text: 'Lobo', style: TextStyle(color: Color.fromARGB(255, 12, 121, 21),fontSize:60,fontWeight: FontWeight.bold )),
      TextSpan(text: 'Fast!!',style: TextStyle(color: Color.fromARGB(255, 66, 134, 212),fontSize:60,fontWeight: FontWeight.bold)),
    ],
  ),
),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.save_outlined,
        ),
        onPressed: () async {
if (!productoFormProvider.isValidForm()) return;
          final String? imagenUrl = await productoService.uploadImage();
          if (imagenUrl != null) {
            productoFormProvider.producto.imagen = imagenUrl;
          }
        
          
  
           print('productoid de comidcard::::: ${productoFormProvider.producto.toJson()}');
          await productoService
              .saveOrCreateProducto(productoFormProvider.producto);
              Navigator.of(context).pop();
        },
      ),
    );
  }
}

class _ProductoForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productoFormProvider = Provider.of<TecnologiaFormProvider>(context);
    final producto = productoFormProvider.producto;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        //height: 200,
        child: Form(
          key: productoFormProvider.formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              TextFormField(
                initialValue: producto.nombre,
                onChanged: (value) => producto.nombre = value,
                validator: (value) {
                  if (value == null || value.length < 1) {
                    return 'El nombre es obligatorio';
                  }
                },
                decoration: InputDecoration(
                    hintText: 'Nombre cel producto',
                    labelText: 'Nombre',
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.deepPurple, width: 2),
                    ),
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                initialValue: '${producto.precio}',
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                      RegExp(r'^(\d+)?\.?\d{0,2}'))
                ],
                onChanged: (value) {
                  if (double.tryParse(value) == null) {
                    producto.precio = 0;
                  } else {
                    producto.precio = double.parse(value);
                  }
                },
                decoration: InputDecoration(
                  hintText: 'Nombre cel producto',
                  labelText: 'Nombre',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepPurple, width: 2),
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SwitchListTile(
                value: producto.disponible,
                title: Text('Disponible'),
                activeColor: Colors.indigo,
                onChanged: (value) =>
                    productoFormProvider.updateDisponible(value),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 5,
                offset: Offset(0, 5),
              ),
            ]),
      ),
    );
  }
}

