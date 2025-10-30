import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn_new/example_two.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  ExampleTwo c = Get.put(ExampleTwo());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sharif')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: c.email,
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            TextFormField(
              controller: c.pass,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            SizedBox(height: 20),
            Obx(
              () => InkWell(
                onTap: () => c.loginApi(),
                child: c.loading.value
                    ? CircularProgressIndicator()
                    : Container(
                        height: 45,
                        color: Colors.blue,
                        child: Center(child: Text('Login')),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
