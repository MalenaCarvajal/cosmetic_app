import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Productos"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              alignment: Alignment.topLeft,
              width: deviceSize.width,
              padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 228, 210, 216)
                  
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/cosmeticos.jpg',
                        height: 80,
                        scale: 1,
                       ),
                    Flexible(child: 
                    Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: const Text("Mejora tu apariencia y belleza con nuestra línea de cosméticos... mas info", 
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, fontStyle: FontStyle.italic),
                      )))
                  ],
                ),
              ),
          ],
          ),
          SizedBox(height: 5,),
                  Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              alignment: Alignment.topLeft,
              width: deviceSize.width,
              padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 228, 210, 216)
                  
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/cuidado_piel.jpg',
                        height: 80,
                        scale: 1,
                       ),
                    Flexible(child: 
                    Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: const Text("Explora nuestra nueva línea de cuidado para la piel a base de productos naturales... mas info", 
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, fontStyle: FontStyle.italic),
                      )))
                  ],
                ),
              ),
          ],
          )
      ],)
    );
  }
}