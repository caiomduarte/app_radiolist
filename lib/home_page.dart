


import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String? opcaoescolhida; 

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text("Exemplo RadioList"),        
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          RadioListTile(
            title: const Text("Linguagem Java"),
            subtitle: const Text("Linguagem da empresa Oracle"),
            secondary: const Icon(Icons.mail),
            activeColor: Colors.green,
            value: "Java", 
            groupValue: opcaoescolhida,
            onChanged: (String? valor) {
             setState(() {
                opcaoescolhida = valor;
             });
            }
          ),

          RadioListTile(
            title: const Text("Linguagem PHP"),
            subtitle: const Text("Linguagem web"),
            secondary: const Icon(Icons.pages),
            activeColor: Colors.green,
            value: "PHP", 
            groupValue: opcaoescolhida,
            onChanged: (String? valor) {
              setState(() {
                opcaoescolhida = valor;
              });
            }
          )
        ],
      ),

     );
  }
}