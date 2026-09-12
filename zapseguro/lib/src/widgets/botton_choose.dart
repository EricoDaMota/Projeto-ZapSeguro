import 'package:flutter/material.dart';

class BottonChoose extends StatefulWidget {
  const BottonChoose({super.key, required this.tela, required this.texto});

  final Function tela;
  final String texto;

  @override
  State<BottonChoose> createState() => _BottonChooseState();
}

class _BottonChooseState extends State<BottonChoose> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        widget.tela;
      },
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(15),
        ),
        side: const BorderSide(
          width: 2,
          color: Colors.green,
        )
      ), child: Text(widget.texto, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),),
    );
  }
}