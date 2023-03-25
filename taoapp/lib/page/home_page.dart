import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_literals_to_create_immutables
      body: Center(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 300)),
            const Text("BlueTooth Mouse"),
            const Padding(padding: EdgeInsets.only(top: 30)),
            SizedBox(
              width: 200,
              child: TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 30)),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Check'),
            )
          ],
        ),
      ),
    );
  }
}
