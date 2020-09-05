import 'package:flutter/material.dart';
import 'package:waiter_app/classes/helpers.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  InputDecoration _getDecorationTextField(String text) => InputDecoration(
        labelText: text,
        labelStyle: TextStyle(
            color: Colors.white, fontSize: 22, fontFamily: "Quicksand"),
        focusColor: Colors.white,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Colors.white,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Colors.white,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top: Helpers.heithPercent(context, 12)),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/logo.png",
                    width: Helpers.widthPercent(context, 55),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, bottom: 8, top: 48),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      onChanged: (value) {},
                      keyboardType: TextInputType.text,
                      decoration: _getDecorationTextField("usuário"),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 72),
                    child: TextField(
                        onChanged: (value) {},
                        style: TextStyle(color: Colors.white),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: _getDecorationTextField("senha")),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/dashboard');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(width: 1, color: Colors.white),
                      ),
                      width: Helpers.widthPercent(context, 75),
                      height: 50,
                      child: Center(
                        child: Text(
                          "login",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      width: Helpers.widthPercent(context, 75),
                      height: 50,
                      child: Center(
                        child: Text(
                          "sign up",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
