import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/*
* Exp 4 - ListView and Card Layout
* */

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                color: Colors.lightBlue,
              ),
              height: 160,
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Image(image: NetworkImage('https://icons.iconarchive.com/icons/dtafalonso/win-10x/512/Weather-icon.png'), height: 50, width: 50,),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Weather App',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(30),
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.lightBlue[50],
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Today\'s Weather',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image(image: NetworkImage('https://icons.iconarchive.com/icons/dtafalonso/win-10x/512/Weather-icon.png'), height: 100, width: 100,),
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mumbai',
                            style: TextStyle(
                              fontSize: 40,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 21, 143, 243),
                            ),
                          ),
                          Text(
                            '32°C',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              // semi dark blue
                              color: Color.fromARGB(255, 0, 48, 89),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.water_drop, color: Colors.blue, size: 20,),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '31% Humidity',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.lightBlue,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.waves, color: Colors.blue, size: 20,),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '12 km/h Wind',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.lightBlue,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(10),
                children: const [
                  Card(
                    color: Colors.white,
                    child: ListTile(
                      leading: Image(
                        image: NetworkImage('https://icons.iconarchive.com/icons/dtafalonso/win-10x/512/Weather-icon.png'),
                        height: 50,
                        width: 50,
                      ),
                      title: Text('Sunny'),
                      subtitle: Text('32°C'),
                      trailing: Text('Today', style: TextStyle(color: Colors.blueGrey, fontSize: 15),),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: ListTile(
                      leading: Image(
                        image: NetworkImage('https://icons.iconarchive.com/icons/dtafalonso/win-10x/512/Weather-icon.png'),
                        height: 50,
                        width: 50,
                      ),
                      title: Text('Sunny'),
                      subtitle: Text('33°C'),
                      trailing: Text('Tue', style: TextStyle(color: Colors.blueGrey, fontSize: 15),),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: ListTile(
                      leading: Image(
                        image: NetworkImage('https://cdn-icons-png.freepik.com/256/10961/10961088.png'),
                        height: 50,
                        width: 50,
                      ),
                      title: Text('Rainy'),
                      subtitle: Text('24°C'),
                      trailing: Text('Wed', style: TextStyle(color: Colors.blueGrey, fontSize: 15),)
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: ListTile(
                      leading: Image(
                        image: NetworkImage('https://static.vecteezy.com/system/resources/previews/023/258/075/non_2x/weather-icon-cloudy-sky-icon-free-png.png'),
                        height: 50,
                        width: 50,
                      ),
                      title: Text('Cloudy'),
                      subtitle: Text('28°C'),
                      trailing: Text('Thu', style: TextStyle(color: Colors.blueGrey, fontSize: 15),)
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: ListTile(
                      leading: Image(
                        image: NetworkImage('https://icons.iconarchive.com/icons/dtafalonso/win-10x/512/Weather-icon.png'),
                        height: 50,
                        width: 50,
                      ),
                      title: Text('Sunny'),
                      subtitle: Text('32°C'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}