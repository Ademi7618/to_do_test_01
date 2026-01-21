import 'package:flutter/material.dart';
import 'package:to_do_test_01/main.dart';

class CalculatorState extends State<Calculator> {
  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();

  double result = 0;

  double get firstValue => double.tryParse(firstController.text) ?? 0;
  double get seconValue => double.tryParse(secondController.text) ?? 0;

  void resetCalculator() {
    setState(() {
      firstController.clear();
      secondController.clear();
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mini - Calculator'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 185, 189, 189),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 255, 255, 255),
            ],
          ),
        ),
        child: Center(
          child: SizedBox(
            width: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: firstController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "первое число",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 18),

                TextField(
                  controller: secondController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "вторая число",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 18),

                Center(
                  child: Text(
                    'Результат: $result',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 18),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 185, 189, 189),
                      ),
                      onPressed: () {
                        setState(() {
                          result = firstValue + seconValue;
                        });
                      },
                      child: Text('+', style: TextStyle(fontSize: 15)),
                    ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 185, 189, 189),
                      ),
                      onPressed: () {
                        setState(() {
                          result = firstValue - seconValue;
                        });
                      },
                      child: Text('-', style: TextStyle(fontSize: 15)),
                    ),
                  ],
                ),

                SizedBox(height: 15),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 185, 189, 189),
                      ),
                      onPressed: () {
                        setState(() {
                          result = firstValue * seconValue;
                        });
                      },
                      child: Text('*', style: TextStyle(fontSize: 15)),
                    ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 185, 189, 189),
                      ),
                      onPressed: () {
                        setState(() {
                          if (seconValue == 0) {
                            result = 0;
                          } else {
                            result = firstValue / seconValue;
                          }
                        });
                      },
                      child: Text('/', style: TextStyle(fontSize: 15)),
                    ),
                  ],
                ),
                SizedBox(height: 18),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//Простите но я использовала материалы из второго месяца обучения, надеюсь это не проблема!
//Пользоваться GitHub надеюсь можно!