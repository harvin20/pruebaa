import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Icon(
                Icons.menu,
                color: Colors.grey[800],
              ),
            ),
            actions: const [Icon(Icons.person)]),
        body: const Column(children: <Widget>[
          //1. Texto principal
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),            child: Row(children: [
              Text("I want to ",
                  style: TextStyle(
                    //tamaño de letra
                    fontSize: 32,
                    //negrita
                    //subrayado
                  )),
              Text("Eat",
                  style: TextStyle(
                      //tamaño de letra
                      fontSize: 32,
                      //negrita
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline))
            ]),
          ),
          //2. pestañas (TabBar)

          //3.contenido de pestañas(TabBarView)

          //4.Carrito(Cart)
        ]));
  }
}
