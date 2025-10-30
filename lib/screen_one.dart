import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page' +Get.arguments[0]),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('Getx Dialog Alert'),
              subtitle: Text('Getx Dialog aleart box'),
              onTap: () {
                Get.defaultDialog(
                  title: 'Delate Chat',
                  middleText: 'Are y6ou sure?',
                  titlePadding: EdgeInsets.only(top: 20),
                  contentPadding: EdgeInsets.all(20),
                  // textConfirm: 'Yes',
                  // textCancel: 'No',
                  confirm: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text('Okay'),
                  ),
                  cancel: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text('Hey'),
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Getx Buttom Sheet'),
              subtitle: Text('Getx Dialog aleart box'),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text("Light MNode"),
                          onTap: () {
                            Get.changeTheme(
                              ThemeData.light(),
                            );
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text("Dark MNode"),
                          onTap: () {
                            Get.changeTheme(
                              ThemeData.dark(),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text('Go Back'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar('Sharif', "Welcome Back");
        },
      ),
    );
  }
}
