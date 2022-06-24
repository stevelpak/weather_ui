import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: const Center(
          child: Text('Weather Forecast'),
        ),
        backgroundColor: Colors.indigo,
        elevation: 0,
      ),
      body: Column(
        children: [
          const TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Enter City Name",
              hintStyle: TextStyle(color: Colors.white),
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  'Murmansk Oblast, RU',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Text(
                'Friday, Mar 20, 2020',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30, bottom: 35, right: 25),
                child: Icon(
                  Icons.sunny,
                  color: Colors.white,
                  size: 100,
                ),
              ),
              Column(
                children: const [
                  Text(
                    "14 °F",
                    style: TextStyle(
                        color: Colors.white,
                        wordSpacing: 10,
                        fontSize: 55,
                        fontWeight: FontWeight.w200),
                  ),
                  Text(
                    "LIGHT SNOW",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                  ),
                  Text(
                    "5",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "km/hr",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Column(
                children: const [
                  Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                  ),
                  Text(
                    "3",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "%",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Column(
                children: const [
                  Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                  ),
                  Text(
                    "20",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "%",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 40, bottom: 10),
              child: Text(
                "7-DAY WEATHER FORECAST",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 160,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  color: Colors.white30,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Monday",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "6 °F  ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Icon(
                            Icons.sunny,
                            color: Colors.white,
                            size: 35,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 160,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  color: Colors.white30,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Tuesday",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "5 °F  ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Icon(
                            Icons.sunny,
                            color: Colors.white,
                            size: 35,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 160,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  color: Colors.white30,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Wednesday",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "15 °F  ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Icon(
                            Icons.sunny,
                            color: Colors.white,
                            size: 35,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 160,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  color: Colors.white30,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Thursday",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "3 °F  ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Icon(
                            Icons.sunny,
                            color: Colors.white,
                            size: 35,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 160,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  color: Colors.white30,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Friday",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "0 °F  ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Icon(
                            Icons.sunny,
                            color: Colors.white,
                            size: 35,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 160,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  color: Colors.white30,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Saturday",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "9 °F  ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Icon(
                            Icons.sunny,
                            color: Colors.white,
                            size: 35,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 160,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  color: Colors.white30,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Sunday",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "10 °F  ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Icon(
                            Icons.sunny,
                            color: Colors.white,
                            size: 35,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
