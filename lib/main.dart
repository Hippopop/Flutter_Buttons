import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "EVENT PARK",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: Colors.white,
                displayColor: Colors.blue,
              ),
          primaryColor: Color(0xff0583F2),
          appBarTheme: AppBarTheme(titleSpacing: 75)),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _setterMethod(int x) {
    setState(() {
      _currentValue = x;
    });
  }

  List<String> _names = [
    "*click_for_name!",
    "Flat Button",
    "Text Button",
    "Raised Button",
    "Elevated Button",
    "Floationg Action Button",
    "Icon Button",
    "Outlined Button",
    "Outline Button",
    "InkWell Button"
  ];
  int _currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB49AD9),
      appBar: AppBar(
        backgroundColor: Color(0xff5D29A6),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        )),
        title: Text(
          "BUTTON PARK",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Image.asset("Images/rotate-right.png",
                fit: BoxFit.cover, height: 20, width: 20, color: Colors.white),
            onPressed: () {
              _setterMethod(0);
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              child: Center(
                child: Text(
                  "BUTTONISTA!",
                  style: TextStyle(fontSize: 32, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Color(0xff2B8C32),
                borderRadius: BorderRadius.circular(5)),
            child: Text(
              "${_names[_currentValue]}",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "DEPRECATED",
                  style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black),
                ),
                Text(
                  "|",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.black),
                ),
                Text(
                  "   UPDATED",
                  style: TextStyle(fontSize: 25, color: Colors.black),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  child: Text(
                    'Click',
                    style: TextStyle(fontSize: 25),
                  ),
                  color: Color(0xffF2B035),
                  textColor: Colors.black,
                  splashColor: Color(0xff2B8C32),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {
                    _setterMethod(1);
                  },
                ),
                TextButton(
                  child: Text(
                    'Click',
                    style: TextStyle(fontSize: 25),
                  ),
                  style: TextButton.styleFrom(
                      primary: Colors.black,
                      backgroundColor: Color(0xffF2B035),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    _setterMethod(2);
                  },
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RaisedButton(
                  elevation: 15,
                  child: Text(
                    'Click',
                    style: TextStyle(fontSize: 25),
                  ),
                  color: Color(0xffF2B035),
                  textColor: Colors.black,
                  splashColor: Color(0xff2B8C32),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {
                    _setterMethod(3);
                  },
                ),
                ElevatedButton(
                  child: Text(
                    'Click',
                    style: TextStyle(fontSize: 25),
                  ),

                  style: TextButton.styleFrom(
                      elevation: 15,
                      primary: Colors.black,
                      backgroundColor: Color(0xffF2B035),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  //color: Colors.lightGreen,
                  onPressed: () {
                    _setterMethod(4);
                  },
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                OutlineButton(
                  child: Text(
                    'Click',
                    style: TextStyle(fontSize: 25),
                  ),
                  highlightedBorderColor: Color(0xffF2B035),
                  highlightColor: Color(0xffF2B035),
                  color: Color(0xffF2B035),
                  textColor: Colors.black,
                  splashColor: Color(0xff2B8C32),
                  borderSide: BorderSide(color: Color(0xffF2B035), width: 5),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {
                    _setterMethod(8);
                  },
                ),
                OutlinedButton(
                  child: Text(
                    'Click',
                    style: TextStyle(fontSize: 25),
                  ),
                  style: TextButton.styleFrom(
                      primary: Colors.black,
                      backgroundColor: Color(0xffF2B035),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    _setterMethod(7);
                  },
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "OTHER BUTTONS",
                  style: TextStyle(color: Colors.black, fontSize: 35),
                )
              ],
            ),
          ),
          Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffF2B035),
              ),
              child: IconButton(
                onPressed: () {
                  _setterMethod(6);
                },
                icon: Icon(Icons.blur_circular_sharp),
                iconSize: 40,
                splashColor: Color(0xff2B8C32),
              )),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffF2B035),
            ),
            child: InkWell(
              splashColor: Color(0xff2B8C32),
              child: Icon(Icons.airplanemode_on_rounded, size: 40),
              onTap: () {
                _setterMethod(9);
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'Images/facebook.png',
                  height: 80,
                  width: 60,
                  color: Colors.black,
                  filterQuality: FilterQuality.high,
                ),
                FittedBox(
                  child: FloatingActionButton(
                    child: Icon(Icons.navigation),
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    onPressed: () => {_setterMethod(5)},
                  ),
                ),
                Image.asset(
                  'Images/twitter.png',
                  height: 80,
                  width: 60,
                  color: Colors.black,
                  filterQuality: FilterQuality.high,
                
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
