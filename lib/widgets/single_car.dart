import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'colors.dart';

class SinglePage extends StatefulWidget {
  SinglePage({
    Key? key,
  }) : super(key: key);

  // int index;

  @override
  State<SinglePage> createState() => _SinglePageState();
}

class _SinglePageState extends State<SinglePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('assets/json/car_list.json'),
            builder: (context, snapshot) {
              // Decode the JSON
              var newData = json.decode(snapshot.data.toString());

              return Stack(
                children: [

                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.35,
                    left: 0.0,
                    right: 0.0,
                    bottom: 0.0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.7,
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(25.0),
                        color: Colors.white,
                      ),
                      child: Column(),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.32,
                    left: 0.0,
                    right: 0.0,
                    bottom: MediaQuery.of(context).size.height * 0.14,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25.0,
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '2022',
                                style: TextStyle(
                                  color: AppColor.secondTextColor,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.025,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25.0,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Mercedes-Benz GLE 63s Coupe',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    color: AppColor.mainTextColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Expanded(
                                  child: Container(),
                                ),
                                Text(
                                  "\$ 163,055",
                                  style: TextStyle(
                                    fontSize: 21.0,
                                    color: AppColor.mainTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.025,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25.0,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 40.0,
                                  width: 100.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: AppColor.backgroundColor,
                                  ),
                                  child: Center(
                                    child: Text(
                                      '160k KM',
                                      style: const TextStyle(
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Expanded(
                                  child: Container(),
                                ),
                                Container(
                                  height: 40.0,
                                  width: 100.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: AppColor.backgroundColor,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'White',
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Expanded(
                                  child: Container(),
                                ),
                                Container(
                                  height: 40.0,
                                  width: 100.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: AppColor.backgroundColor,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Istanbul',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.025,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25.0,
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Model S',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: AppColor.mainTextColor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 25.0,
                            ),
                            child: Text(
                              """Dual Motor All-Wheel Drive unlocks more range than any other vehicle in our current lineup, with insane power and maximum control.""",
                              style: TextStyle(
                                fontSize: 16.0,
                                height: 1.5,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.025,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25.0,
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Details',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: AppColor.mainTextColor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 25.0,
                            ),
                            child: Text(
                              """Dual Motor All-Wheel Drive unlocks more range than any other vehicle in our current lineup, with insane power and maximum control.""",
                              style: TextStyle(
                                fontSize: 16.0,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0.0,
                    left: 0.0,
                    right: 0.0,
                    bottom: MediaQuery.of(context).size.height * 0.65,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.35,
                      // decoration:  BoxDecoration(
                      //   // borderRadius: BorderRadius.circular(25.0),
                      //
                      // ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(25)
                        ),
                        child: Image.asset(
                          'assets/img/jpg/gle.jpg',
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30.0,
                    left: 25.0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        FontAwesomeIcons.x,
                        color: Colors.white,
                        size: 20.0,
                      ),
                    ),
                  ),
                ],
              );
            }));
  }
}
