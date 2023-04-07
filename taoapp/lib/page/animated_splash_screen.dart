import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AnimatedSplashScreen extends StatelessWidget {
  const AnimatedSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.blueGrey,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                  width: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Text(
                    "Hãy chọn giá đúng",
                    style: TextStyle(
                      fontSize: 80,
                      color: Colors.amber,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 105,
                  width: 60,
                ),
                Center(
                  child: Lottie.asset(
                    'animations/47747-start.json',
                  ),
                ),
                Expanded(
                  // Expanded giúp để nút bấm chiếm hết phần trống trong cột của Column
                  child: Align(
                    //Align giúp đặt nút bấm ở dưới cùng giữa của màn hình bằng cách sử dụng Alignment.bottomCenter.
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      onPressed: () {
                        // Điều hướng sang trang chính của ứng dụng
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                      child: const Text('Bắt đầu'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
