import 'package:Our_School/app/presentation/views/login/login_view.dart';
import 'package:flutter/material.dart';

import '../../widgets/form_text_field.dart';
import '../../widgets/my_button_form.dart';

class ForgotPasswordView extends StatelessWidget {
    final _emailAddress = TextEditingController();

   ForgotPasswordView({super.key});

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
                'Ingrese su correo para enviar codigo para la recuperacion',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),

              const SizedBox(
                height: 20,
              ),
               MyFormTextField(
                labelText: 'Email',
                hintText: 'Ingresa el correo electronico',
                textInputType: TextInputType.emailAddress,
                obscureText: false,
                suffixIcon: false,
                controller: _emailAddress,
              ),
                          
              const SizedBox(
                height: 20,
              ),
              MyButtonForm(
                text: 'Enviar codigo',
                onTab: (){},                
              ),
              
              const SizedBox(
                height: 20,
              ),
              MyButtonForm(
                text: 'Volver a inicio',
                onTab: (){Navigator.push(
                        context,MaterialPageRoute(builder: (context) => LoginView()
                        ));
                      },                
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
