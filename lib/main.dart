import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var _text = "";

  void _incrementCounter() {
    setState(() {
      _counter++;
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                _text, style: const TextStyle(fontStyle: FontStyle.normal),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                   _text = "Text button got clicked";
                });
            }, 
            child: const Text("Text Button")),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              setState(() {
                _text = "Elevated button got clicked";
              });
            }, 
            child: const Text("Elevated Button")),
            const SizedBox(height: 10,),
           OutlinedButton(onPressed: (){
              setState(() {
                _text = "Outlined button got clicked";
              });
            }, 
            child: const Text("Outline Button")),
            const SizedBox(height: 10,),
            GestureDetector(
              onTap: () { 
                setState(() {
                  _text = "GestureDetector got clicked";
                });
              },
              child: Image.network(width: 50, height: 50,'https://avatars2.githubusercontent.com/u/35045612?s=280&v=4')),
              const SizedBox(height: 10,),
              InkWell(
              onTap: () { 
                setState(() {
                  _text = "onTap got clicked";
                });
              },
              child: Image.network(width: 50, height: 50, 'https://avatars2.githubusercontent.com/u/35045612?s=280&v=4')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _text = "Floating Action Button got clicked";
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
