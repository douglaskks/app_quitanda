import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:app_quitanda/src/auth/components/sign_up_Screen.dart';
import 'package:app_quitanda/src/auth/config/custom_text_fields.dart';
import 'package:app_quitanda/src/auth/config/custom_colors.dart';
import 'package:app_quitanda/src/base/base_screnn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key});

  final cpfFormater = MaskTextInputFormatter(mask: '###.###.###-##', filter: {
    '#': RegExp(
      r'[0-9]',
    ),
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Nome do App
                    const Text(
                      'Quitanda',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    const Text(
                      "Chagas",
                      style: TextStyle(color: Colors.red, fontSize: 40),
                    ),

                    // Categorias
                    SizedBox(
                      height: 30,
                      child: DefaultTextStyle(
                        style: const TextStyle(fontSize: 25),
                        child: AnimatedTextKit(
                          pause: Duration.zero,
                          repeatForever: true,
                          animatedTexts: [
                            FadeAnimatedText('Frutas'),
                            FadeAnimatedText('Verduras'),
                            FadeAnimatedText('Legumes'),
                            FadeAnimatedText('Carnes'),
                            FadeAnimatedText('Cereais'),
                            FadeAnimatedText('Laticínios'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const CustomTextField(
                      icon: Icons.email,
                      label: 'Email',
                    ),
                    const CustomTextField(
                      icon: Icons.password,
                      label: 'Senha',
                      isSecret: true,
                    ),

                    //Botão de Entrar
                    SizedBox(
                      height: 50,
                      width: 120,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (c) {
                                return BaseScreen();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          "Entrar",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Esqueceu a senha?',
                          style: TextStyle(
                            color: CustomColors.customContrastColor,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: CustomDivider(),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text("ou"),
                          ),
                          Expanded(
                            child: CustomDivider(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(width: 2, color: Colors.green),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (c) {
                              return SignUpScreen();
                            }),
                          );
                        },
                        child: Text("Criar Conta"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.grey.withAlpha(90),
      thickness: 1,
    );
  }
}
