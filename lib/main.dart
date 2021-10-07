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
            icon: const Icon(Icons.alternate_email_rounded, color: Colors.white),
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
              borderRadius: BorderRadius.circular(5)
            ),
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
              //highlightColor: Color(0xffF2B035),
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
            height: 75,
            width: 75,
            child: FittedBox(
              child: FloatingActionButton(
                child: Icon(Icons.navigation),
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                onPressed: () => {_setterMethod(5)},
              ),
            ),
          ),
        ],
      )),
    );
  }
}










/*
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First app Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(title: 'Mostafij First App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter = _counter + 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('MOSTAFIJ',
            textAlign: TextAlign?.start,
            style: Theme.of(context).textTheme.headline2,
             ),

            Text(
              'Why you are pushing the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/
