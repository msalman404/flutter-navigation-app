import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  static const String id = 'ScreenTwo';
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffA6CD4E),
      appBar: AppBar(
        title: const Text('Navigation'),
        backgroundColor: const Color(0xff242E38),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 30, 47, 56),
                    borderRadius: BorderRadius.circular(8)),
                height: 50,
                width: 150,
                child: TextButton(
                  child: const Text(
                    'Goto Home',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )),
          )
        ],
      ),
    );
  }
}
