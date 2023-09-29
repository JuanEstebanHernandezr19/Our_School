import 'package:Our_School/app/presentation/views/forgot_password/forgot_%20password_view.dart';
import 'package:Our_School/app/presentation/views/login/Login_Divider.dart';
import 'package:Our_School/app/presentation/views/register/register_view.dart';
import 'package:Our_School/app/presentation/widgets/links_common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginView extends StatelessWidget {

  final _emailAddress = TextEditingController();
  final _visiblePassword = TextEditingController();

  static const String name = 'login_view';



  LoginView({super.key});

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
              //Logo
              SvgPicture.asset(
                'assets/images/Mimarca1.svg',
                colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.primary, BlendMode.srcIn),
                alignment: Alignment.topCenter,
                width: 180,
              ),
              Text(
                'Inicio de sesión',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),

              const SizedBox(
                height: 20,
              ),
               MyFormTextField(
                labelText: 'Correo',
                hintText: 'Introduce tu correo electrónico',
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
                  hintText: 'Contraseña',
                  textInputType: TextInputType.visiblePassword,
                  obscureText: false,
                  suffixIcon: true,
                  controller: _visiblePassword,
              ),


              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {Navigator.push(
                        context,MaterialPageRoute(builder: (context) => ForgotPasswordView()
                        ));
                      },
                        child: Text(
                          '¿Ha olvidado su contraseña?',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),

              const SizedBox(
                height: 20,
              ),
              MyButtonForm(
                text: 'Login',
                onTab: (){
                  print('Email Address: ${_emailAddress.text}');
                  print('Password: ${_visiblePassword.text}');

                },
              ),
              const SizedBox(
                height: 10,
              ),

              const LoginDivider(),
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
                      '¿No tienes cuenta?',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    TextButton(
                      onPressed: () {Navigator.push(
                        context,MaterialPageRoute(builder: (context) => RegisterView()
                        ));
                      },
                      child: Text(
                        'Sign up',
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
