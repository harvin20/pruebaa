import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  const DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //prepa1 
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        
        crossAxisCount: 2 ),
     //cuantos elementos
      itemCount: 2,
      padding: const EdgeInsets.all(12),
 //que elementos contruira
      itemBuilder: (context, Index){
        return; 

    }
     ); 

  }
}