import 'package:flutter/material.dart';

class HomePageWithState extends StatefulWidget {
  const HomePageWithState({super.key});

  //int _counter1 = 200;

  @override
  State<HomePageWithState> createState() => _HomePageWithStateState();
}

class _HomePageWithStateState extends State<HomePageWithState> {
  int _counter = 100;

  void addCounter() {
    setState(() {
      _counter++;
    });
  }

  void removeCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          _counter.toString(),
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              addCounter();
            },
            child: const Icon(
              Icons.add,
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              removeCounter();
            },
            child: const Icon(
              Icons.remove,
            ),
          ),
        ],
      ),
    );
  }
}
