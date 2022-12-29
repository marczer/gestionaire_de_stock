import 'package:flutter/material.dart';
import 'package:gestionnaire_de_stock/view/widget/textfield.dart';
import 'package:getwidget/components/card/gf_card.dart';
import 'package:getwidget/getwidget.dart';

import 'signUp_screen.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var largeur = MediaQuery.of(context).size.width;
    var hauteur = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
          height: hauteur,
          width: largeur,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/back.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GFCard(
                color: Colors.white30,
                boxFit: BoxFit.cover,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                margin: EdgeInsets.symmetric(horizontal: largeur * 0.1),
                content: Container(
                  width: largeur * 0.5,
                  child: Column(
                    children: [
                      textfield(
                          width: largeur * 0.85,
                          color: Colors.grey,
                          label: 'Email',
                          TextEditingController: _emailController),
                      SizedBox(
                        height: 20,
                      ),
                      textfield(
                          width: largeur * 0.85,
                          color: Colors.grey,
                          label: 'Password',
                          TextEditingController: _passController),
                      SizedBox(
                        height: 20,
                      ),
                      GFButtonBar(
                        children: <Widget>[
                          GFButton(
                            elevation: 2.0,
                            color: Colors.orange.shade900,
                            hoverColor: Colors.orange.shade600,
                            onPressed: () {},
                            text: 'Se connecter',
                          ),
                          GFButton(
                            elevation: 2.0,
                            color: Colors.blue.shade700,
                            hoverColor: Colors.blue.shade600,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const signup(),
                                  ));
                            },
                            text: 'Creer un compte',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
