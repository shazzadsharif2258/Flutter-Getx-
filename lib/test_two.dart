import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn_new/example_two.dart';

class TestTwo extends StatefulWidget {
  const TestTwo({super.key});

  @override
  State<TestTwo> createState() => _TestTwoState();
}

class _TestTwoState extends State<TestTwo> {
  ExampleTwo c = Get.put(ExampleTwo());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sharif')),
      body: Column(
        children: [
          Obx(
            () => Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                Text('Notifications'),
                Switch(
                  value: c.noti.value,
                  onChanged: (value) {
                    c.noti.value = value;
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
