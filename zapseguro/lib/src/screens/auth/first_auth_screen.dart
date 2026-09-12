import 'package:flutter/material.dart';
import 'package:zapseguro/src/screens/auth/choose_auth_screen.dart';
import 'package:zapseguro/src/widgets/botton_choose.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Center(
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 10, 71, 12),
                ),
                child: Icon(Icons.shield_sharp, size: 80, color: Colors.green),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 10, 0, 15),
            child: Text(
              'Proteja quem você ama.',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 5, 0, 15),
            child: Text(
              'Este aplicativo identifica mensagens potencialmente perigosas recebidas pelo WhatsApp e pode avisar automaticamente uma pessoa de confiança.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: SizedBox(
                height: 50,
                width: 250,
                child: BottonChoose(
                  tela: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ChooseAuthScreen(),
                      ),
                    );
                  },
                  texto: 'Começar',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /*
  Future<bool?> showMessage() {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(18),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Nenhuma nofiticação recebida',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close_rounded),
                ),
              ),
            ],
          ),
        );
      },
    );
  } */
}
