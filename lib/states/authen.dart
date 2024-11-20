import 'package:flutter/material.dart';
import 'package:shoppingmall/states/widget/show_image.dart';
import 'package:shoppingmall/utility/my_constant.dart';

class Authen extends StatefulWidget {
  const Authen({super.key});

  @override
  State<Authen> createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size * 0.6,
          child: ShowImage(pathImage: MyConstant.image1),
        ),
      ),
    );
  }
}
