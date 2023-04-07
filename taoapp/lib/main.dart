import 'package:flutter/material.dart';
import 'package:taoapp/page/home_page.dart';
import 'package:taoapp/page/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //material và materialapp đều dngf để xây dựng giao diện người dùng theo phong cách googele
      /* 
      - MaterialApp cung cấp 1 cách tạo các đường dẫn thông qua Navigator
      - Material được sử dụng để tạo button, text filed, checkbox,radio button, card
    */
      /*
        Container: widget đơn giản nhất để chứa các thành phần UI khác, được sử dụng để tạo khung cho một phần của giao diện.
        Text: widget để hiển thị văn bản trên màn hình.
        Image: widget để hiển thị hình ảnh trên màn hình.
        ListView: widget để tạo danh sách các phần tử có thể cuộn được.
        RaisedButton và FlatButton: các widget nút để thực hiện hành động khi được nhấn.
        TextField: widget để chấp nhận đầu vào từ người dùng.
        Icon: widget để hiển thị biểu tượng trên màn hình.
        Checkbox và Radio: các widget để chọn tùy chọn trong danh sách.
        Card: widget để tạo các khung chứa chứa các thành phần UI khác.
     */

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // Định nghĩa đường dẫn cho trang chính
        '/': (context) => const AnimatedSplashScreen(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
