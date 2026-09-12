import 'package:flutter/material.dart';
import 'package:zapseguro/src/widgets/back_arrow.dart';

class ChooseAuthScreen extends StatelessWidget {
  const ChooseAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 40, 0, 5),
            child: BackArrow(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 0, 5),
            child: Text(
              'Configurações',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 0, 15),
            child: Text(
              'Como você vai usar o aplicativo?',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 20,
            width: 20,
            color: Colors.blue,
          ),
          Container(
            height: 20,
            width: 20,
            color: Colors.amber,
          )
        ],
      ),
    );
  }
}