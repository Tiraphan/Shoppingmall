import 'dart:io';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shoppingmall/utility/my_constant.dart';
import 'package:shoppingmall/widget/show_image.dart';
import 'package:shoppingmall/widget/show_title.dart';

class MyDialog {
  Future<Null> alertLocationService(
      BuildContext context, String title, String message) async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: ListTile(
          leading: ShowImage(pathImage: MyConstant.image3),
          title: ShowTitle(
            title: title,
            textStyle: MyConstant().h2Style(),
          ),
          subtitle: ShowTitle(
            title: message,
            textStyle: MyConstant().h3Style(),
          ),
        ),
        actions: [
          TextButton(
              onPressed: () async {
                //Navigator.pop(context),
                await Geolocator.openLocationSettings();
                //exit(0);
              },
              child: const Text('OK'))
        ],
      ),
    );
  }
}
