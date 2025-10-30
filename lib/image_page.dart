import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_learn_new/example_two.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  ExampleTwo c = Get.put(ExampleTwo());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sharif')),
      body: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: c.imagePath.isNotEmpty
                    ? FileImage(
                        File(c.imagePath.toString()),
                      )
                    : null,
              ),
            ),
            TextButton(
              onPressed: () {
                c.getImage();
              },
              child: Text("PickImage"),
            ),
          ],
        ),
      ),
    );
  }
}
