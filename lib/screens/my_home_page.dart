import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text('My Home'),
        actions: [
          IconButton(
            onPressed: () {
              if (kDebugMode) {
                print('Account btn pressed');
              }
            },
            icon: const Icon(
              Icons.person_2_outlined,
            ),
          ),
        ],
      ),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.access_alarm),
            const Icon(Icons.home),
            const Icon(Icons.abc),
            GestureDetector(
              onTap: () {
                setState(() {
                  count--;
                });
              },
              child: Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
                child: Center(
                  child: Text(
                    '$count',
                    style: const TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image.jpg',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            count++;
          });
          // if (kDebugMode) {
          //   print('fab pressed');
          // }
        },
        label: const Text('Add'),
      ),
    );
  }
}
