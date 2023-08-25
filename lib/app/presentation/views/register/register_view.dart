
import 'package:Our_School/app/presentation/views/login/login_view.dart';
import 'package:Our_School/app/presentation/views/register/register_Divider.dart';
import 'package:flutter/material.dart';
import 'package:Our_School/app/presentation/widgets/links_common_widgets.dart';


class RegisterView extends StatelessWidget {
  final _emailAddress = TextEditingController();
  final _visiblePassword = TextEditingController();
  final _datetime = TextEditingController();
  final _name = TextEditingController();

  static const String name = 'register_view';

   RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [    
              Text(
                'Llena los campos correspondientes',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              MyFormTextField(
              labelText:'Nombre', 
              hintText: 'Ingrese su nombre completo', 
              textInputType: TextInputType.name, 
              obscureText: false, 
              suffixIcon: false, 
              controller: _name,
              ),
              const SizedBox(
                height: 20,
              ),
               MyFormTextField(
                labelText: 'Email',
                hintText: 'Ingresa un correo',
                textInputType: TextInputType.emailAddress,
                obscureText: false,
                suffixIcon: false,
                controller: _emailAddress,
              ),
              const SizedBox(
                height: 20,
              ),
              MyFormTextField(
                  labelText: 'Contraseña',
                  hintText: 'ingresa una contraseña',
                  textInputType: TextInputType.visiblePassword,
                  obscureText: false,
                  suffixIcon: true,
                  controller: _visiblePassword,
              ),
              const SizedBox(
                height: 20,
              ),
              MyFormTextField(
                labelText: 'Fecha fecha de nacimiento', 
                hintText: 'formato AAAA/MM/DD', 
                textInputType: TextInputType.datetime, 
                obscureText: false, 
                suffixIcon: true, 
                controller: _datetime
                ),
  
              const SizedBox(
                height: 20,
              ),
              MyButtonForm(
                text: 'Registrarse',
                onTab: (){
                  print('Email Address: ${_emailAddress.text}');
                  print('Password: ${_visiblePassword.text}');

                },
              ),


              const SizedBox(
                height: 10,
              ),

              const LoginDivider2(),
              const SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MySocialButton(
                    onTap: () {},
                    imagePath: "assets/icons/google.png",
                  ),
                  MySocialButton(
                    onTap: () {},
                    imagePath: "assets/icons/facebook.png",
                  ),
                  MySocialButton(
                    onTap: () {},
                    imagePath: "assets/icons/twitter.png",
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'ya tienes una cuenta?',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    TextButton(
                      onPressed: () {Navigator.push(
                        context,MaterialPageRoute(builder: (context) => LoginView()
                        ));
                      },
                      child: Text(
                        'inicia sesion',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Form
              //Button
              //TextButton
            ],
          ),
        ),
      )),
    );
  }
}