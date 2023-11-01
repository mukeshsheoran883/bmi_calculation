import 'package:flutter/material.dart';

class CalculationScreen extends StatefulWidget {
  const CalculationScreen({super.key});

  @override
  State<CalculationScreen> createState() => _CalculationScreenState();
}

class _CalculationScreenState extends State<CalculationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF242225),
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "BMI CALCULATOR",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height * 0.04,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
