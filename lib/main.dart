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
  final weekDays = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Weather Forecast'),
        backgroundColor: Colors.indigo,
        elevation: 0,
      ),
      body: Column(
        children: [
          const TextField(
            maxLength: 20,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                border: InputBorder.none,
                counterText: '',
                hintText: "Enter City Name",
                hintStyle: TextStyle(color: Colors.white),
                icon: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                )),
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
                padding: EdgeInsets.only(top: 70, bottom: 70, right: 25),
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
              children: List.generate(
                7,
                (index) => Container(
                  width: 160,
                  margin: const EdgeInsets.all(10),
                  color: Colors.white30,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          "${weekDays[index]}",
                          style: const TextStyle(
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
              ),
            ),
          )
        ],
      ),
    );
  }
}
