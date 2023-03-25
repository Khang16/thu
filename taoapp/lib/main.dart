import 'package:flutter/material.dart';
import 'package:taoapp/page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: MaterialApp(
          title: 'Hãy chọn giá đúng',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          debugShowCheckedModeBanner: false,
          home: const HomePage()),
    );
  }
}
