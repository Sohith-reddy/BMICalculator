import 'package:flutter/material.dart';
import 'input_page.dart';
void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
      appBarTheme: AppBarTheme(
        //TODO:This is original color
            color: const Color(0xFF1D1B20),
        //TODO:This is for reference
        // color: Colors.blue,
        // color: Color(0xFF3C3F36)
          ),
        scaffoldBackgroundColor: const Color(0xFF1D1B20),
      ),
      home:  InputPage(),
    );
  }
}

