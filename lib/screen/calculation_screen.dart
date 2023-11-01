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
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.03,
            left: MediaQuery.of(context).size.width * 0.04,
            right: MediaQuery.of(context).size.width * 0.04,
          ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                        color: const Color(0xFF484149),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.male,
                              color: Colors.white,
                              size: 100,
                            ),
                          ),
                          const Text(
                            "Male",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                        color: const Color(0xFF484149),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.female_outlined,
                              color: Colors.white,
                              size: 100,
                            ),
                          ),
                          const Text(
                            "Female",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
