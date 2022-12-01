import 'package:flutter/material.dart';
import 'package:productos_app/providers/login_form_provider.dart';
import 'package:productos_app/services/auth_service.dart';
import 'package:productos_app/widgets/card_container.dart';
import 'package:productos_app/widgets/fondo_login.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Fondo_Login(
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 250,
            ),
            CardContainer(
              child: Column(
                children: [
                     SizedBox(
              height: 100,
            ),
          RichText(
  text: TextSpan(
    text: '',
    
    children: const <TextSpan>[
      TextSpan(text: 'Lobo', style: TextStyle(color: Color.fromARGB(255, 12, 121, 21),fontSize:60,fontWeight: FontWeight.bold )),
      TextSpan(text: 'Fast!!',style: TextStyle(color: Color.fromARGB(255, 66, 134, 212),fontSize:60,fontWeight: FontWeight.bold)),
    ],
  ),
),
Text('Registrate',style: TextStyle(color: Colors.orange,fontSize:50,fontWeight: FontWeight.bold)),
                  TextButton(
                    child: Text(
                      '¿Ya tienes cuenta?',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, 'login'),
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(
                          Colors.indigo.withOpacity(0.1)),
                      shape: MaterialStateProperty.all(StadiumBorder()),
                    ),
                  ),
                   Text(
                    'Empieza a ganar vendiendo o repartiendo',
                    style:TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold) ,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ChangeNotifierProvider(
                      create: (_) => LoginFormProvider(), child: _LoginForm()),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
         
          ]),
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<LoginFormProvider>(context);

    return Container(
      child: Form(
        key: loginForm.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            TextFormField(
               style: TextStyle(color: Colors.white),
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepPurple,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepPurple,
                    width: 2,
                  ),
                ),
                hintText: ' corroe@gmail.com',
                 hintStyle: TextStyle(color: Colors.white),
                labelText: 'Correo electronico:',
                 fillColor: Colors.white,
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 255, 254, 254),
                ),
                prefixIcon: Icon(
                  Icons.alternate_email_sharp,
                  color: Colors.deepPurple,
                ),
              ),
              onChanged: (value) => loginForm.email = value,
              validator: (value) {
                String pattern =
                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                RegExp regExp = new RegExp(pattern);
                return regExp.hasMatch(value ?? '')
                    ? null
                    : 'El correo no es valido';
              },
            ),
            TextFormField(
              style: TextStyle(color: Colors.white),
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepPurple,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepPurple,
                    width: 2,
                  ),
                ),
                hintText: '*********',
                hintStyle: TextStyle(color: Colors.white),
                labelText: 'Contraseña:',
                 fillColor: Colors.white,
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: Colors.deepPurple,
                ),
              ),
              onChanged: (value) => loginForm.password = value,
              validator: (value) {
                if (value != null && value.length >= 6) return null;
                return 'La contraseña debe ser de al menos 6 caracteres';
              },
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              disabledColor: Colors.grey,
              color: Colors.deepPurple,
              elevation: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                child: Text(
                  loginForm.isLoading ? 'Espere...' : 'Registrarse',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              onPressed: loginForm.isLoading
                  ? null
                  : () async {
                      FocusScope.of(context).unfocus();
                      final authService =
                          Provider.of<AuthService>(context, listen: false);
                      if (!loginForm.isValidForm()) return;
                      loginForm.isLoading = true;
                      //await Future.delayed(Duration(seconds: 2));
                      final String? resp = await authService.crearUsuario(
                          loginForm.email, loginForm.password);

                      if (resp == null) {
                        Navigator.pushReplacementNamed(context, 'menu');
                      } else {
                        print('resp');
                      }
                      loginForm.isLoading = false;
                    },
            ),
          ],
        ),
      ),
    );
  }
}
