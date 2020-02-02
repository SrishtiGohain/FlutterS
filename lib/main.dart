import 'package:flutter/material.dart';
import 'mybutton.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APP 3',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home:  MyHomePage(title: 'WOULD YOU RATHER'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;

  void _incrementCounter() {
    setState(() {
      count++;
    });
  }

  void _decrementCounter() {
    setState(() {
      count--;
    });
  }
  //}
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Center(
            child:Text(widget.title),
          

          ),
        ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'How Dumb Are You?',
              ),
              Text(
                '$count',
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
         mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
           Padding(padding: EdgeInsets.all(5),
           child: Column(children:[
            //  FloatingActionButton(
            //   onPressed: _decrementCounter,
            //   tooltip: 'Decrement',
            //   child: Icon(Icons.arrow_back),
            // ),
            //  FloatingActionButton(
            //   onPressed: _incrementCounter,
            //   tooltip: 'Increment',
            //   child: Icon(Icons.arrow_forward),
            // )

            new myButton("Plus", Colors.pink, _incrementCounter),
            new myButton("Mimnus", Colors.red, _decrementCounter)
           ]
              ,
           )),
           
            
          ],
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
