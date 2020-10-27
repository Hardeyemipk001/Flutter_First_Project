// import 'dart:js';
// import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // void OpenBottomSheet(context){
  //   showModalBottomSheet(
  //     context: context,
  //     builder:  (
  //     BuildContext contex
  //     )
  //   )
  // }

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
        primarySwatch: Colors.deepPurple,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Sherif'),
      debugShowCheckedModeBanner: false,
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
  double sliderSwitch = 0;
  bool switch1 = false;
  bool str = true;
  int state=0;

  final GlobalKey<ScaffoldState> _scaffold = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    double sliderValue = 0;

    return Scaffold(
      key: _scaffold,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Shopping"),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            tooltip: "cart",
             onPressed: cart,
          ),
          IconButton(
            icon: Icon(Icons.arrow_circle_down_sharp),
            tooltip: "arrow",
            onPressed: arrow,
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text("Alarm"),
              tileColor: Colors.cyan,
              onTap: () {
                print("Sherif is tapping");
                setState(() {
                  Navigator.pop(context);
                });
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              onPressed: () {
                final snkBar = SnackBar(
                  action: SnackBarAction(
                    label: "Order",
                    onPressed: () {
                      print("Pizza is on its way");
                    },
                  ),
                  elevation: 30,
                  content: Text(
                    "sherif is here",
                    style: new TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'RobotoMono'),
                  ),
                );
                // snkBar.of(context);
                _scaffold.currentState.showSnackBar(snkBar);
              },
              child: Text("Snack Bar"),
            ),
            new CupertinoButton(
              child: Text("Cuper Button"),
              onPressed: () {
                print("Clicked");
              },
            ),
            new RaisedButton(
              child: Text("Cuper Choices"),
              onPressed: () {
                final act = CupertinoActionSheet(
                  title: Text("Food Choices"),
                  message: Text("What would you like to eat"),
                  actions: [
                    CupertinoActionSheetAction(
                      child: Text("Pizza"),
                      onPressed: () {
                        print("You have selected Pizza");
                      },
                    ),
                    CupertinoActionSheetAction(
                      child: Text("Cookie Dough"),
                      onPressed: () {
                        print("You have Cookie Dough");
                      },
                    ),
                    CupertinoActionSheetAction(
                      child: Text(" Buttered Bread"),
                      onPressed: () {
                        print("You have Butter Bread");
                      },
                    ),
                  ],
                  cancelButton: CupertinoActionSheetAction(
                    child: Text("Cancel"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                );
                showCupertinoModalPopup(
                    context: context, builder: (BuildContext context) => act);
              },
            ),
            new CupertinoActivityIndicator(
              radius: 20,
            ),
            RaisedButton(
              child: Text("Cuper Alert"),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => CupertinoAlertDialog(
                          title: Text("Alert"),
                          content: Text(" Phone is too hot !!!"),
                          actions: [
                            CupertinoDialogAction(
                              isDefaultAction: true,
                              child: Text("Bye"),
                              onPressed: () {
                                print("Bye");
                                Navigator.pop(context);
                              },
                            )
                          ],
                        ));
              },
            ),
            new CupertinoButton(
              child: Text("Cuper Button"),
              onPressed: () {
                print("Clicked");
              },
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            Container(
                height: 90,
                child: CupertinoPicker(
                  itemExtent: 50,
                  onSelectedItemChanged: (int index) {
                    print(index);
                  },
                  children: [
                    Text(
                      "Item 1",
                      style: TextStyle(
                          color: Colors.lightBlueAccent,
                          decoration: TextDecoration.underline),
                    ),
                    Text("Item 2"),
                    Text("Item 3"),
                    Text("Item 4"),
                    Text("Item 5"),
                    Text("Item 6"),
                    Text("Item 7"),
                    Text("Item 8"),
                    Text("Item 9"),
                    Text("Item 10"),
                  ],
                )),
            new CupertinoSlider(
              value: sliderSwitch,
              onChanged: (double val) {
                print(val);
                setState(() {
                  sliderSwitch = val;
                });
              },
              activeColor: Colors.green,
              thumbColor: Colors.red,
              divisions: 10,
            ),
            new CupertinoSwitch(
              value: switch1,
              trackColor: Colors.red,
              activeColor: Colors.green,
              onChanged: (bool value) {
                print(value);
                setState(() {
                  switch1 = value;
                  if (value == true) {
                    print("its is now true ");
                  } else {
                    print("it is now false");
                  }
                });
              },
            ),
            new Container(
              child: CupertinoTabBar(items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("Home")),
                BottomNavigationBarItem(icon: Icon(Icons.school),title: Text("School")),
                BottomNavigationBarItem(icon: Icon(Icons.business_center),title: Text("Business")),
                BottomNavigationBarItem(icon: Icon(Icons.menu),title: Text("Menu")),
              ],
                currentIndex:state,
                onTap: (int index){
                  print(index);
                  setState(() {
                    state=index;
                    if(state==2){
                      setState(() {
                        print("Business time");
                      });
                    }
                  });
                },
              ),
            ),
          ],

        ),

      ),

    );
  }

  void cart() {
    print("carting");
  }

  void arrow() {
    print("arrowing");
  }
}
