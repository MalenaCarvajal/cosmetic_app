import 'package:cosmetic_app/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final userController = TextEditingController();
    final pwdController = TextEditingController();

    return Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          decoration:const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/fondo.jpg"),
            fit: BoxFit.fill,
          ),
        ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset('assets/images/img_login.jpg',
                    width: size.width,
                    scale: 1,
                   ),
              ),
              const Text("Bienvenido",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),                
              ),

              Container(
                  padding:const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueGrey, width: 2.0),
                    borderRadius: const BorderRadius.all(Radius.circular(8))
                  ),
                margin: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: userController,
                  
                ),
              ),
              Container(
                 padding:const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueGrey, width: 2.0),
                    borderRadius: const BorderRadius.all(Radius.circular(8))
                  ),
                  margin: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: pwdController,
                ),
              ) ,
              ElevatedButton(
                onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => const HomePage()));}, 
                child: const Text("Ingresar"),
                )//Image.asset // Image.asset
            ], //<Widget>[]
          ), //Column
        ), //Center
      );
  }
}