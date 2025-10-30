import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn_new/example_two.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  ExampleTwo c = Get.put(ExampleTwo());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test Page')),
      body: Obx(
        () => Column(
          children: [
            Container(
              height: 150,
              width: 150,
              color: Colors.red.withOpacity(
                c.opacity.value,
              ),
            ),

            Slider(
              value: c.opacity.value,
              onChanged: (value) {
                c.setOpacity(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
