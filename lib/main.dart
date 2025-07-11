import 'package:calculator/provider/cal_provider.dart';
import 'package:calculator/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculatorProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: HomeScreen(),
      ),
    );
  }
}

