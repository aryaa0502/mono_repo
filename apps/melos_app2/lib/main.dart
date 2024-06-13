import 'package:flutter/material.dart';
import 'package:melos_dependency/melos_dependency.dart';
import 'package:melos_dependency2/melos_dependency2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
  int valueFromAddOne = Calculator().addOne(1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomContainer(
              color: Color.fromARGB(255, 176, 241, 230),
              height: 300,
              width: 500,
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Value from pkg1: $valueFromAddOne',
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const Text(
                    'This custom container comes from pkg2',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromARGB(156, 0, 0, 0)),
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
