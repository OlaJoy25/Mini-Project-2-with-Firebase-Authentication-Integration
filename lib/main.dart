import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ordering App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Ordering App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(padding: EdgeInsets.only(left: 20.0), children: <Widget>[
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Welcome, Dancan',
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF473D3A))),
              Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://images.pexels.com/photos/1315741/pexels-photo-1315741.jpeg',
                            )),
                      )))
            ],
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(
              right: 40,
            ),
            child: Container(
              child: Text(
                'Select your taste, We deliver',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 12.0,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF473D3A)),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black,
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const SecondPage();
                    }));
                    setState(() {});
                  },
                  child: Text('Taste of The Week')),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  'See all',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12.0,
                      color: Color(0xFFCEC7C4)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(children: <Widget>[
            Container(
              height: 130,
              width: 140,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0xFFDAB68C),
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Text('Mr Crepes',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      )),
                  const Text('Caffe Misto',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      )),
                  const Text(
                      'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.white,
                      )),
                  const Text('\Rwf 3500',
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            Container(
              height: 130,
              width: 140,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0xFFDAB68C),
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text('Meze Fresh',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      )),
                  const Text('Quesadilla',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      )),
                  const Text(
                      'Crispy tortillas stuffed with molten, juicy goodness.',
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.white,
                      )),
                  const Text('\Rwf 3500',
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
          ]),
          SizedBox(
            height: 5,
          ),
          Row(children: <Widget>[
            Container(
              height: 50,
              width: 120,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(25),
              ),
              padding: EdgeInsets.all(16.0),
              child: Column(children: [
                const Text('Order Now',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white,
                    )),
              ]),
            ),
            Container(
              height: 50,
              width: 120,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(25),
              ),
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(20),
              child: Column(children: [
                const Text('Order Now',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white,
                    )),
              ]),
            )
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Explore More',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF473D3A)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  'See all',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12.0,
                      color: Color(0xFFCEC7C4)),
                ),
              ),
            ],
          ),
          Row(children: <Widget>[
            Container(
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/4955210/pexels-photo-4955210.jpeg',
                      )),
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(20),
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/60616/fried-chicken-chicken-fried-crunchy-60616.jpeg',
                      )),
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(20),
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/115740/pexels-photo-115740.jpeg',
                      )),
                )),
          ]),
        ]),
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Favorite',
                icon: Icon(
                  Icons.favorite,
                  color: Colors.black,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Order',
                icon: Icon(
                  Icons.done,
                  color: Colors.black,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Profile',
                backgroundColor: Colors.black,
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              ),
            ],
            currentIndex: currentIndex,
            onTap: (int index) {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const SeventhPage();
              }));

              setState(() {
                currentIndex = index;
              });
            }));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(padding: EdgeInsets.only(left: 20.0), children: <Widget>[
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Welcome, Dancan',
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF473D3A))),
              Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://images.pexels.com/photos/1315741/pexels-photo-1315741.jpeg',
                            )),
                      )))
            ],
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(
              right: 40,
            ),
            child: Container(
              child: Text(
                'Select your taste, We deliver',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 12.0,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF473D3A)),
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Mr Crepes',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF473D3A)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black,
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const ThirdPage();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'See All',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Row(children: <Widget>[
            Container(
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/4955210/pexels-photo-4955210.jpeg',
                      )),
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(20),
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/1633578/pexels-photo-1633578.jpeg',
                      )),
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(20),
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/8261827/pexels-photo-8261827.jpeg',
                      )),
                ))
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Scholars Coffee',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF473D3A)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black,
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const FourthPage();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'See All',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Row(children: <Widget>[
            Container(
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/2396220/pexels-photo-2396220.jpeg',
                      )),
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(20),
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg',
                      )),
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(20),
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/14219965/pexels-photo-14219965.jpeg',
                      )),
                )),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Meze Fresh',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF473D3A)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black,
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const FifthPage();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'See All',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Row(children: <Widget>[
            Container(
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/1893556/pexels-photo-1893556.jpeg',
                      )),
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(20),
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/60616/fried-chicken-chicken-fried-crunchy-60616.jpeg',
                      )),
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(20),
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/115740/pexels-photo-115740.jpeg',
                      )),
                )),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Divine Shop',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF473D3A)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black,
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const SixthPage();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'See All',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(children: <Widget>[
            Container(
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/3223494/pexels-photo-3223494.jpeg',
                      )),
                )),
            Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(20),
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/13814644/pexels-photo-13814644.jpeg',
                      )),
                )),
            Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(20),
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/1352270/pexels-photo-1352270.jpeg',
                      )),
                )),
          ])
        ]),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Favorite',
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Order',
              icon: Icon(
                Icons.done,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
          ],
          currentIndex: 0,
        ));
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(padding: EdgeInsets.only(left: 20.0), children: <Widget>[
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Welcome, Dancan',
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF473D3A))),
              Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://images.pexels.com/photos/1315741/pexels-photo-1315741.jpeg',
                            )),
                      )))
            ],
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(
              right: 40,
            ),
            child: Container(
              child: Text(
                'Select your taste, We deliver',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 12.0,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF473D3A)),
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Mr Crepes',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF473D3A)),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(children: <Widget>[
            Container(
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/4955210/pexels-photo-4955210.jpeg',
                      )),
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(20),
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/1633578/pexels-photo-1633578.jpeg',
                      )),
                )),
            Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(20),
              height: 90,
              width: 140,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0xFFDAB68C),
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://images.pexels.com/photos/8261827/pexels-photo-8261827.jpeg',
                    )),
              ),
            )
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Sweet Crepes',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 48.0),
              Text(
                'SandWhich',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 62.0),
              Text(
                'Milkshake',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'RwF 1500',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 72.0),
              Text(
                'RwF 2500',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 75.0),
              Text(
                'RwF 2000',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(children: <Widget>[
            Container(
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/338713/pexels-photo-338713.jpeg',
                      )),
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(20),
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/1194030/pexels-photo-1194030.jpeg',
                      )),
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(20),
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/1194028/pexels-photo-1194028.jpeg',
                      )),
                )),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Orange Juice',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 48.0),
              Text(
                'Mango Juice',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 62.0),
              Text(
                'Cocktail Juice',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'RwF 1500',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 72.0),
              Text(
                'RwF 1500',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 87.0),
              Text(
                'RwF 2000',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(children: <Widget>[
            Container(
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/4725649/pexels-photo-4725649.jpeg',
                      )),
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(20),
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/2121746/pexels-photo-2121746.jpeg',
                      )),
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(20),
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/16025868/pexels-photo-16025868.jpeg',
                      )),
                )),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Slated Crepes',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 48.0),
              Text(
                'Coke',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 97.0),
              Text(
                'Nutella Crepe',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'RwF 2000',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 72.0),
              Text(
                'RwF 1300',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 100.0),
              Text(
                'RwF 2000',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ]),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Favorite',
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Order',
              icon: Icon(
                Icons.done,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
          ],
          currentIndex: 0,
        ));
  }
}

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(padding: EdgeInsets.only(left: 20.0), children: <Widget>[
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Welcome, Dancan',
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF473D3A))),
              Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://images.pexels.com/photos/1315741/pexels-photo-1315741.jpeg',
                            )),
                      )))
            ],
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(
              right: 40,
            ),
            child: Container(
              child: Text(
                'Select your taste, We deliver',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 12.0,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF473D3A)),
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Scholars Coffee Shop',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF473D3A)),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(children: <Widget>[
            Container(
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/8340103/pexels-photo-8340103.jpeg',
                      )),
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(20),
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/7336982/pexels-photo-7336982.jpeg',
                      )),
                )),
            Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(20),
              height: 90,
              width: 140,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0xFFDAB68C),
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://images.pexels.com/photos/16028534/pexels-photo-16028534.jpeg',
                    )),
              ),
            )
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Black Coffee',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 48.0),
              Text(
                'Expresso',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 62.0),
              Text(
                'Capuccino',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'RwF 1500',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 72.0),
              Text(
                'RwF 2500',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 75.0),
              Text(
                'RwF 2500',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(children: <Widget>[
            Container(
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/5028859/pexels-photo-5028859.jpeg',
                      )),
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(20),
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg',
                      )),
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(20),
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/4195601/pexels-photo-4195601.jpeg',
                      )),
                )),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Latte',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 82.0),
              Text(
                'Mocha',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 92.0),
              Text(
                'Americano',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'RwF 3000',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 72.0),
              Text(
                'RwF 2500',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 87.0),
              Text(
                'RwF 2000',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(children: <Widget>[
            Container(
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/4725649/pexels-photo-4725649.jpeg',
                      )),
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(20),
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/2983100/pexels-photo-2983100.jpeg',
                      )),
                )),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Mochiato',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 72.0),
              Text(
                'Coke',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'RwF 2000',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 72.0),
              Text(
                'RwF 1500',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ]),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Favorite',
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Order',
              icon: Icon(
                Icons.done,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
          ],
          currentIndex: 0,
        ));
  }
}

class FifthPage extends StatelessWidget {
  const FifthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(padding: EdgeInsets.only(left: 20.0), children: <Widget>[
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Welcome, Dancan',
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF473D3A))),
              Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://images.pexels.com/photos/1315741/pexels-photo-1315741.jpeg',
                            )),
                      )))
            ],
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(
              right: 40,
            ),
            child: Container(
              child: Text(
                'Select your taste, We deliver',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 12.0,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF473D3A)),
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Meze Fresh Shop',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF473D3A)),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(children: <Widget>[
            Container(
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/6941039/pexels-photo-6941039.jpeg',
                      )),
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(20),
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/60616/fried-chicken-chicken-fried-crunchy-60616.jpeg',
                      )),
                )),
            Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(20),
              height: 90,
              width: 140,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0xFFDAB68C),
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://images.pexels.com/photos/16014835/pexels-photo-16014835.jpeg',
                    )),
              ),
            )
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Fries',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 48.0),
              Text(
                'Fried Chicken',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 62.0),
              Text(
                'Quesadilla',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'RwF 1500',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 72.0),
              Text(
                'RwF 2500',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 75.0),
              Text(
                'RwF 2000',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(children: <Widget>[
            Container(
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/10296413/pexels-photo-10296413.jpeg',
                      )),
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(20),
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/8448322/pexels-photo-8448322.jpeg',
                      )),
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(20),
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/406152/pexels-photo-406152.jpeg',
                      )),
                )),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Chapati',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 48.0),
              Text(
                'Meatballs',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 48.0),
              Text(
                'Fish Filltes',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'RwF 1500',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 72.0),
              Text(
                'RwF 1500',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 72.0),
              Text(
                'RwF 2000',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(children: <Widget>[
            Container(
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/4021983/pexels-photo-4021983.jpeg',
                      )),
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(20),
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/2983100/pexels-photo-2983100.jpeg',
                      )),
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(20),
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/8679358/pexels-photo-8679358.jpeg',
                      )),
                )),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Mojito',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 48.0),
              Text(
                'Coke',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 97.0),
              Text(
                'Mango',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'RwF 2000',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 72.0),
              Text(
                'RwF 1300',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 100.0),
              Text(
                'RwF 2000',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ]),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Favorite',
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Order',
              icon: Icon(
                Icons.done,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
          ],
          currentIndex: 0,
        ));
  }
}

class SixthPage extends StatelessWidget {
  const SixthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(padding: EdgeInsets.only(left: 20.0), children: <Widget>[
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Welcome, Dancan',
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF473D3A))),
              Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://images.pexels.com/photos/1315741/pexels-photo-1315741.jpeg',
                            )),
                      )))
            ],
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(
              right: 40,
            ),
            child: Container(
              child: Text(
                'Select your taste, We deliver',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 12.0,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF473D3A)),
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Divine Shop',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF473D3A)),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(children: <Widget>[
            Container(
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/6941039/pexels-photo-6941039.jpeg',
                      )),
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(20),
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/60616/fried-chicken-chicken-fried-crunchy-60616.jpeg',
                      )),
                )),
            Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(20),
              height: 90,
              width: 140,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0xFFDAB68C),
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://images.pexels.com/photos/14998943/pexels-photo-14998943.jpeg',
                    )),
              ),
            )
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Fries',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 48.0),
              Text(
                'Fried Chicken',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 62.0),
              Text(
                'Pilau',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'RwF 1500',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 72.0),
              Text(
                'RwF 1500',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 75.0),
              Text(
                'RwF 2000',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(children: <Widget>[
            Container(
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/4725649/pexels-photo-4725649.jpeg',
                      )),
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(20),
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/2121746/pexels-photo-2121746.jpeg',
                      )),
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(20),
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/16025868/pexels-photo-16025868.jpeg',
                      )),
                )),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Chapati',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 48.0),
              Text(
                'Meatballs',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 97.0),
              Text(
                'Fish Fillets',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'RwF 2000',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 72.0),
              Text(
                'RwF 1300',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 100.0),
              Text(
                'RwF 2000',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(children: <Widget>[
            Container(
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/2983100/pexels-photo-2983100.jpeg',
                      )),
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(20),
                height: 90,
                width: 140,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFFDAB68C),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/338713/pexels-photo-338713.jpeg',
                      )),
                )),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Coke',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(width: 48.0),
              Text(
                'Cocktail Juice',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            Text(
              'RwF 1300',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(width: 72.0),
            Text(
              'RwF 2000',
              style: TextStyle(fontSize: 20.0),
            ),
          ])
        ]),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Favorite',
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Order',
              icon: Icon(
                Icons.done,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
          ],
          currentIndex: 0,
        ));
  }
}

class SeventhPage extends StatelessWidget {
  const SeventhPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
