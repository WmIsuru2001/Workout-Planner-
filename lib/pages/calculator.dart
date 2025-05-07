import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  //user entered values
  final TextEditingController _number1Controller = TextEditingController();
  final TextEditingController _number2Controller = TextEditingController();

  int _result = 0;
  //methode

  void add() {
    setState(() {
      int number1 = int.tryParse(_number1Controller.text) ?? 0;
      int number2 = int.tryParse(_number2Controller.text) ?? 0;
      _result = number1 + number2;
    });
  }

  void substraction() {
    setState(() {
      int number1 = int.tryParse(_number1Controller.text) ?? 0;
      int number2 = int.tryParse(_number2Controller.text) ?? 0;
      _result = number1 - number2;
    });
  }

  void multiply() {
    setState(() {
      int number1 = int.tryParse(_number1Controller.text) ?? 0;
      int number2 = int.tryParse(_number2Controller.text) ?? 0;
      _result = number1 * number2;
    });
  }

  void divide() {
    setState(() {
      int number1 = int.tryParse(_number1Controller.text) ?? 0;
      int number2 = int.tryParse(_number2Controller.text) ?? 0;
      double answer = number1 / number2;
      _result = answer.ceil();
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _number1Controller.dispose();
    _number2Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Calculator"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _number1Controller,
              decoration: InputDecoration(
                hintText: "Enter First Number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                contentPadding: const EdgeInsets.all(20),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _number2Controller,
              decoration: InputDecoration(
                hintText: "Enter Second Number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                contentPadding: const EdgeInsets.all(20),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                _result.toString(),
                style: const TextStyle(
                  fontSize: 40,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: () {
                add();
              },
              child: const Text("+"),
            ),
            FloatingActionButton(
              onPressed: () {
                substraction();
              },
              child: const Text("-"),
            ),
            FloatingActionButton(
              onPressed: () {
                multiply();
              },
              child: const Text("*"),
            ),
            FloatingActionButton(
              onPressed: () {
                divide();
              },
              child: const Text("/"),
            ),
          ],
        ),
      ),
    );
  }
}
