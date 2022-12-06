import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = false; // Set to true for visual layout
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter layout demo', home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  // to do something
                },
                tooltip:
                    MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: const Text(
            'Tap',
            style: TextStyle(
                color: Colors.indigo, fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Action1',
                  style: TextStyle(
                      color: Colors.blueGrey, fontWeight: FontWeight.bold),
                )),
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              tooltip: 'Open shopping cart',
              onPressed: () {
                // handle the press
              },
            ),
          ],
        ),
        body: Container(
          child: const DemoStack(),
        )
      )
    );
  }
}

class DemoStack extends StatelessWidget {
  const DemoStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Positioned(
          left: 0,
          top: 0,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.amber,
          )
        ),
        Positioned(
          left: 60,
          top: 60,
          child: Container(
            width: 75,
            height: 75,
            color: Colors.redAccent,
          )
        ),
        Positioned(
          right: 30,
          top: 60,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.car_rental,
              color: Colors.blueAccent,
              size: 24.0,
            )
          )
        )
      ],
    );
  }
}
