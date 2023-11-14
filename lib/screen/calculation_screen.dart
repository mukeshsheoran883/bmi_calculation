import 'package:bmi_calculation/const/colors_const.dart';
import 'package:bmi_calculation/const/string_const.dart';
import 'package:bmi_calculation/provider/bmi_provider.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

class CalculationScreen extends StatefulWidget {
  const CalculationScreen({super.key});

  @override
  State<CalculationScreen> createState() => _CalculationScreenState();
}

class _CalculationScreenState extends State<CalculationScreen> {
  // void calculateBMI() {
  //   double meter = StringConst.currentSliderValue / 100;
  //   double bmi = StringConst.weight / (meter * meter);
  //   StringConst.result = bmi.toStringAsFixed(2);
  // }
  //
  // void incrementAge() {
  //   setState(() {
  //     StringConst.age++;
  //   });
  // }
  //
  // void decrementAge() {
  //   if (StringConst.age > 0) {
  //     setState(() {
  //       StringConst.age--;
  //     });
  //   }
  // }
  //
  // void incrementWeight() {
  //   setState(() {
  //     StringConst.weight++;
  //   });
  // }
  //
  // void decrementWeight() {
  //   if (StringConst.weight > 0) {
  //     setState(
  //       () {
  //         StringConst.weight--;
  //       },
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConst.backgroundColor,
      body: Consumer<BmiProvider>(
        builder: (BuildContext context, BmiProvider value, Widget? child) {
          return SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                right: MediaQuery.of(context).size.width * 0.04,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "BMI CALCULATOR",
                      style: TextStyle(
                        color: ColorsConst.textColor,
                        fontSize: MediaQuery.of(context).size.height * 0.04,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.24,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                            color: ColorsConst.containerColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.male,
                                  color: ColorsConst.textColor,
                                  size:
                                      MediaQuery.of(context).size.height * 0.11,
                                ),
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                    color: ColorsConst.textColor, fontSize: 30),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.24,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                            color: ColorsConst.containerColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.female_outlined,
                                  color: ColorsConst.textColor,
                                  size:
                                      MediaQuery.of(context).size.height * 0.11,
                                ),
                              ),
                              Text(
                                "Female",
                                style: TextStyle(
                                    color: ColorsConst.textColor, fontSize: 30),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.260,
                      width: 400,
                      decoration: BoxDecoration(
                        color: ColorsConst.containerColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "HEIGHT",
                            style: TextStyle(
                                color: ColorsConst.textColor, fontSize: 30),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                StringConst.currentSliderValue
                                    .toStringAsFixed(2),
                                style: TextStyle(
                                    color: ColorsConst.textColor, fontSize: 40),
                              ),
                              Text(
                                "cm",
                                style: TextStyle(
                                    color: ColorsConst.textColor, fontSize: 25),
                              ),
                            ],
                          ),
                          Slider(
                            // activeColor: Colors.white,
                            //thumbColor: Colors.green,
                            //inactiveColor: Colors.red,
                            mouseCursor: MaterialStateMouseCursor.clickable,
                            value: StringConst.currentSliderValue,
                            max: 300,
                            divisions: 300,
                            label: StringConst.currentSliderValue
                                .round()
                                .toString(),
                            onChanged: (double value) {
                              setState(
                                () {
                                  StringConst.currentSliderValue = value;
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.25,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                            color: ColorsConst.containerColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "WEIGHT",
                                    style: TextStyle(
                                      color: ColorsConst.textColor,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                    ),
                                  ),
                                  Text(
                                    '(kg,)',
                                    style: TextStyle(
                                      color: ColorsConst.textColor,
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                StringConst.weight.toString(),
                                style: TextStyle(
                                  color: ColorsConst.textColor,
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.04,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                    onPressed: value.decrementWeight,
                                    icon: Center(
                                      child: Icon(
                                        Icons.remove,
                                        color: ColorsConst.textColor,
                                        size: 25,
                                      ),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        ColorsConst.buttonColor,
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: value.incrementWeight,
                                    icon: Center(
                                      child: Icon(
                                        Icons.add,
                                        color: ColorsConst.textColor,
                                        size: 25,
                                      ),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        ColorsConst.buttonColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.25,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                            color: ColorsConst.containerColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "AGE",
                                style: TextStyle(
                                  color: ColorsConst.textColor,
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.04,
                                ),
                              ),
                              Text(
                                StringConst.age.toString(),
                                style: TextStyle(
                                  color: ColorsConst.textColor,
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.04,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                    onPressed: value.decrementAge,
                                    icon: Center(
                                      child: Icon(
                                        Icons.remove,
                                        color: ColorsConst.textColor,
                                        size: 25,
                                      ),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        ColorsConst.buttonColor,
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: value.incrementAge,
                                    icon: Center(
                                      child: Icon(
                                        Icons.add,
                                        color: ColorsConst.textColor,
                                        size: 25,
                                      ),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        ColorsConst.buttonColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          ColorsConst.buttonColor,
                        ),
                        //shape: MaterialStateProperty.all(LinearBorder.none),
                        minimumSize: MaterialStateProperty.all(
                          const Size(400, 40),
                        ),
                      ),
                      onPressed: () {
                        value.calculateBMI();
                        String message;
                        double bmi = double.parse(StringConst.result);

                        if (bmi <= 18.5) {
                          message = 'Underweight';
                        } else if (bmi <= 24.9) {
                          message = 'Normal weight';
                        } else {
                          message = 'Overweight';
                        }

                        Fluttertoast.showToast(
                          msg: message,
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                        );
                      },
                      child: Text(
                        "CALCULATE",
                        style: TextStyle(
                          color: ColorsConst.textColor,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
