import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn_new/example_two.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({super.key});

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  ExampleTwo c = Get.put(ExampleTwo());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sharif')),
      body: Obx(
        () => Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: c.fruitList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      onTap: () {
                        if (c.favList.contains(
                          c.fruitList[index].toString(),
                        )) {
                          c.removeFav(
                            c.fruitList[index].toString(),
                          );
                        } else {
                          c.addFav(
                            c.fruitList[index].toString(),
                          );
                        }
                      },
                      title: Text(
                        c.fruitList[index].toString(),
                      ),
                      trailing: Icon(
                        Icons.favorite,
                        color:
                            c.favList.contains(
                              c.fruitList[index].toString(),
                            )
                            ? Colors.red
                            : Colors.white,
                      ),
                    ),
                  );
                },
              ),
            ),
            Divider(height: 0.5),
            Expanded(
              child: ListView.builder(
                itemCount: c.favList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(
                        c.favList[index].toString(),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
