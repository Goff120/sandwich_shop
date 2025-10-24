import 'package:flutter/material.dart';

void main() {
  //runApp(const MyApp());
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Sandwich Shop App',
  home: Scaffold(
    appBar: AppBar(title: const Text('Sandwich Counter')),
    body: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ListView(
              children: const [
                OrderItemDisplay(4, 'Footlong'),
                OrderItemDisplay(5, 'BLT'),
                OrderItemDisplay(3, 'Chicken'),
                OrderItemDisplay(3, 'Meatball'),
                OrderItemDisplay(7, 'Tuna'),
                OrderItemDisplay(2, 'Club'),
                OrderItemDisplay(3, 'Meatball'),
                OrderItemDisplay(7, 'Tuna'),
                OrderItemDisplay(2, 'Club'),
              ]
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                OrderItemDisplay(2, 'Veggie Delight'),
                OrderItemDisplay(6, 'Turkey'),
                OrderItemDisplay(1, 'Ham'),
                OrderItemDisplay(3, 'Meatball'),
                OrderItemDisplay(7, 'Tuna'),
                OrderItemDisplay(2, 'Club'),
                OrderItemDisplay(3, 'Meatball'),
                OrderItemDisplay(7, 'Tuna'),
                OrderItemDisplay(2, 'Club'),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                OrderItemDisplay(3, 'Meatball'),
                OrderItemDisplay(7, 'Tuna'),
                OrderItemDisplay(2, 'Club'),
                OrderItemDisplay(3, 'Meatball'),
                OrderItemDisplay(7, 'Tuna'),
                OrderItemDisplay(2, 'Club'),
                OrderItemDisplay(3, 'Meatball'),
                OrderItemDisplay(7, 'Tuna'),
                OrderItemDisplay(2, 'Club'),
                OrderItemDisplay(3, 'Meatball'),
                OrderItemDisplay(7, 'Tuna'),
                OrderItemDisplay(2, 'Club'),
                OrderItemDisplay(3, 'Meatball'),
                OrderItemDisplay(7, 'Tuna'),
                OrderItemDisplay(2, 'Club'),
                OrderItemDisplay(3, 'Meatball'),
                OrderItemDisplay(7, 'Tuna'),
                OrderItemDisplay(2, 'Club'),
              ],
            ),
          ),
            ]
          ),
      ),
    ),
  );

  }
}


class OrderItemDisplay extends StatelessWidget {
  final String itemType;
  final int quantity;

  const OrderItemDisplay(this.quantity, this.itemType, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      color: const Color.fromARGB(255, 10, 49, 134),
      width: 350.0,
      height: 100.0,
      alignment: Alignment.center, // if text is too big, it gets cut off
      child: Text(
        '$quantity $itemType sandwich(es): ${'🥪' * quantity}',
        style: const TextStyle(
          fontSize: 20.0,
          color: Color.fromARGB(255, 24, 201, 127),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Sand Shop',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _incrementCounter() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: const Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Welcome to my shop!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(153, 18, 21, 218), 
            ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
