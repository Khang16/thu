import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProductInfo {
  final String name;
  final int price;

  ProductInfo(this.name, this.price);
}

final products = [
  ProductInfo('Wireless mouse', 3),
  ProductInfo('Keyboard', 5),
  ProductInfo('Camera', 8),
  ProductInfo('Speaker', 4),
  ProductInfo('iPad', 1000),
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentProductIndex = 0;
  int? _inputtedPrice;
  String _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold dùng để xây dựng trang web
      // Scaffold bao gồm :
      // body (nội dung chính của màn hình)
      //appBar (thanh đầu trang)
      //bottomNavigationBar (thanh điều hướng dưới cùng)
      //drawer (khung chứa menu bên trái)
      body: Center(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 80)),
            Text(products[_currentProductIndex].name),
            const Padding(padding: EdgeInsets.only(top: 40)),
            SizedBox(
              width: 200,
              child: TextField(
                key: const Key('priceInput'),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                /* 
                  inputFormatters là một thuộc tính của các widget như TextField hoặc TextFormField
                  được sử dụng để giới hạn và định dạng đầu vào của người dùng.
                  -FilteringTextInputFormatter.digitsOnly sử dụng để giới hạn đầu vapf của user chit chứa các số tuwd 0->9
                */
                onChanged: (value) {
                  _inputtedPrice = int.tryParse(value);
                },
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 40)),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _result =
                      _inputtedPrice == products[_currentProductIndex].price
                          ? 'pass'
                          : 'fail';
                });
              },
              child: const Text('Check'),
            ),
            Visibility(
              visible: _result.isNotEmpty,
              child: Text(
                _result,
                key: const Key('result'),
                /*Khi bạn viết một test widget, bạn có thể sử dụng Key để tìm 
                và truy cập một widget cụ thể trong tree widget. */
              ),
            ),
            Visibility(
              visible: _result.isNotEmpty,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _result = '';
                    if (_currentProductIndex < 4) {
                      _currentProductIndex++;
                    }
                  });
                },
                child: const Text('Next'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
