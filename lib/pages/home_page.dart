import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/mytab.dart';
import 'package:flutter_application_1/tab/burger.dart';
import 'package:flutter_application_1/tab/donut.dart';
import 'package:flutter_application_1/tab/pizza.dart';
import 'package:flutter_application_1/tab/smoothie.dart';
import 'package:flutter_application_1/tab/pancakes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override 
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = <Widget>[
   const Mytab(iconPath: 'lib/icons/donut.png',),
   const Mytab(iconPath: 'lib/icons/burger.png',),
   const Mytab(iconPath: 'lib/icons/smoothie.png',),
   const Mytab(iconPath: 'lib/icons/pancakes.png',),
   const Mytab(iconPath: 'lib/icons/pizza.png',),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.transparent,
              leading: Icon(
                Icons.menu,
                color: Colors.grey[800],
              ),
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 24.0),
                  child: Icon(Icons.person),
                )
              ]),
          //column
      
          body:  Column(
            children: <Widget>[
              //1. Texto principal (text)
              const Row(children: [
                Padding(
                   padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    "I want to",
                    style: TextStyle(
                      //Tamaño de la letra
                      fontSize: 32,
      
                      //Negritas
                    ),
                  ),
                ),
                Text(
                  "Eat",
                  style: TextStyle(
      
                      //Tamaño de la letra
                      fontSize: 32,
      
                      //Negritas
                      fontWeight: FontWeight.bold,
      
                      //Subrayado
                      decoration: TextDecoration.underline),
                ),
              ]),           
           TabBar(tabs: myTabs),
                              
            //3. Contenido de pestañas (TapBar View)
            const TabBarView(children: [
            DonutTab(),
            BurgerTab(),
            SmoothieTab(),
            PancakesTab(),
            PizzaTab(),
            ],
            ),
            ],
            //4
          )),
    );
  }
}
