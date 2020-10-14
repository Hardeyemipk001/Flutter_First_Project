import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
        primarySwatch: Colors.red,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Sherifdeen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

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
  int _selectIndex = 1;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  void CallContact() {
    print("Calling Contact");
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //

  return MaterialApp(
    home: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.red,

            actions: [
              IconButton(icon: Icon(Icons.settings),
                tooltip: "Settings",
                onPressed: cart,
              ),
            ],
            bottom: TabBar(
            tabs: [
             // Tab(icon: Icon(Icons.camera_alt)),
              Tab(icon: Icon(Icons.directions_railway_outlined)),
              Tab(icon: Icon(Icons.directions_subway_outlined)),
              Tab(icon: Icon(Icons.directions_bike_outlined)),
              ],
          ),
          title: Text("Tab Bar"),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){
                 print("Long pressed");
                },
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
           // Icon(Icons.camera_alt),
            Icon(Icons.directions_railway_outlined),
            Icon(Icons.directions_subway_outlined),
            Icon(Icons.directions_bike_outlined),
          ],
        ),
      ),

    )
  );




  }


  void cart() {
    print("Settings");
  }
}
