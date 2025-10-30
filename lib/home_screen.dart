import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Getx Leanring')),
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
          Card(
            child: ListTile(
              title: Text('message'.tr),
              subtitle: Text('Getx Dialog aleart box'),
              onTap: () {},
            ),
          ),
          SizedBox(height: 50),
          Row(
            children: [
              OutlinedButton(
                onPressed: () {
                  Get.updateLocale(Locale('bn', 'BD'));
                },
                child: Text('Bangla'),
              ),
              SizedBox(width: 20),
              OutlinedButton(
                onPressed: () {
                  Get.updateLocale(Locale('en', 'US'));
                },
                child: Text('English'),
              ),
            ],
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Get.toNamed(
                  '/screenone',
                  arguments: ['Sharif', 'karim'],
                );
              },
              child: Text('Go Next Page'),
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
