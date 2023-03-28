import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMICalc(),
    ),
  );
}

class BMICalc extends StatefulWidget {
  const BMICalc({Key? key}) : super(key: key);

  @override
  State<BMICalc> createState() => _BMICalcState();
}

class _BMICalcState extends State<BMICalc> {
  double weight = 20;
  double age = 5;
  double slideVal = 60;
  double bmi = 0;
  double height = 170;
  double width = 175;
  double height1 = 170;
  double width1 = 175;

  List bColor = [Colors.red, Colors.pink];
  List aIcon = [Colors.pink, Colors.white];

  Color cColor = const Color(0xff1d1e33);
  Color cColor1 = const Color(0xff1d1e33);
  Color iColor = Colors.white;
  Color iColor1 = Colors.white;

  String result() {
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  List<Color> color1 = [Colors.pink];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
          style: TextStyle(color: Color(0xffffffff)),
        ),
        backgroundColor: const Color(0xff090E21),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: const Color(0xff090e21),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: const Color(0xff090E21),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(
                              () {
                                cColor = const Color(0xff3B3C4D);
                                cColor1 = const Color(0xff1d1e33);
                                iColor = const Color(0xffEB1555);

                                width = (width == 175) ? 120 : 170;
                                height = (height == 170) ? 150 : 170;
                              },
                            );
                          },
                          child: AnimatedContainer(
                              curve: Curves.elasticInOut,
                              duration: Duration(seconds: 2),
                              margin: const EdgeInsets.all(10),
                              height: height,
                              width: width,
                              decoration: BoxDecoration(
                                color: cColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.female,
                                    size: 120,
                                    color: iColor,
                                  ),
                                  const Text(
                                    "Female",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              cColor1 = const Color(0xff3B3C4D);
                              cColor = const Color(0xff1d1e33);
                              iColor1 = const Color(0xffEB1555);
                              width1 = (width1 == 175) ? 120 : 170;
                              height1 = (height1 == 170) ? 150 : 170;
                            });
                          },
                          child: AnimatedContainer(
                            curve: Curves.elasticInOut,
                            duration: Duration(seconds: 2),
                            margin: const EdgeInsets.all(10),
                            height: height1,
                            width: width1,
                            decoration: BoxDecoration(
                              color: cColor1,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.male,
                                  size: 120,
                                  color: iColor1,
                                ),
                                const Text(
                                  "Male",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: const Color(0xff090E21),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          height: 200,
                          width: 370,
                          decoration: BoxDecoration(
                              color: const Color(0xff1d1e33),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              const Text(
                                "\nHeight",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff626473),
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "${slideVal.toInt()}",
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 72),
                                    ),
                                    const TextSpan(
                                      text: ("  CM"),
                                      style: TextStyle(
                                        color: Color(0xff626473),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Slider(
                                onChanged: (value) {
                                  setState(() {
                                    slideVal = value;
                                  });
                                },
                                value: slideVal,
                                min: 60,
                                max: 250,
                                divisions: 190,
                                activeColor: const Color(0xffF5C1D1),
                                inactiveColor: const Color(0xff555555),
                                thumbColor: const Color(0xffEB1555),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: const Color(0xff090E21),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          height: 170,
                          width: 175,
                          decoration: BoxDecoration(
                            color: const Color(0xff1d1e33),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              const Text(
                                "\nWeight",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              Text(
                                "\n${weight.toInt()}",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        weight -= 1;
                                      });
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                        left: 50,
                                        top: 15,
                                      ),
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff4c4f5e),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: const Icon(
                                        Icons.arrow_right_alt_rounded,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        weight += 1;
                                      });
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                        left: 20,
                                        top: 15,
                                      ),
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff6E6F7A),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: const Icon(
                                        Icons.add,
                                        color: Color(0xffF67FA4),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          height: 170,
                          width: 175,
                          decoration: BoxDecoration(
                            color: const Color(0xff1d1e33),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              const Text(
                                "\n Age",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              Text(
                                "\n${age.toInt()}",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        age -= 1;
                                      });
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                        left: 50,
                                        top: 15,
                                      ),
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff4c4f5e),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: const Icon(
                                        Icons.arrow_right_alt_rounded,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        age += 1;
                                      });
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                        left: 20,
                                        top: 15,
                                      ),
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff6E6F7A),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: const Icon(
                                        Icons.add,
                                        color: Color(0xffF67FA4),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "BMI = ${bmi.toStringAsFixed(1)}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {
                  setState(() {
                    bmi = weight / pow(slideVal / 100, 2);
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffEB1555),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Calculate",
                    style: TextStyle(fontSize: 36, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
