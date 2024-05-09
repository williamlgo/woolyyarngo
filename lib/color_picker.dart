import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

//Random Color Picker PAGE
class _Page1State extends State<Page1> {
  StreamController<int> controller = StreamController<int>();

  @override
  initState() {
    super.initState();
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<FortuneItem> items = [
      FortuneItem(child: Text('Pink')),
      FortuneItem(child: Text('Red')),
      FortuneItem(child: Text('Orange')),
      FortuneItem(child: Text('Yellow')),
      FortuneItem(child: Text('Green')),
      FortuneItem(child: Text('Blue')),
      FortuneItem(child: Text('Violet')),
      FortuneItem(child: Text('Brown')),
      FortuneItem(child: Text('Black')),
      FortuneItem(child: Text('White')),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Random Color Picker'), backgroundColor: Colors.red[300],),
      backgroundColor: Colors.amber[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 300,
              child: FortuneWheel(
                physics: CircularPanPhysics(
                  duration: Duration(seconds: 3),
                  curve: Curves.decelerate,
                ),
                onFling: () {
                  setState(
                        () => controller.add(
                      Fortune.randomInt(0, items.length),
                    ),
                  );
                },
                selected: controller.stream,
                animateFirst: false,
                items: [
                  FortuneItem(
                    child: Text("Pink"),
                    style: FortuneItemStyle(
                      color: Colors.pinkAccent,
                      borderColor: Colors.black12,
                    )
                  ),
                  FortuneItem(
                      child: Text("Red"),
                      style: FortuneItemStyle(
                        color: Colors.redAccent,
                        borderColor: Colors.black12,
                      )
                  ),
                  FortuneItem(
                      child: Text("Orange"),
                      style: FortuneItemStyle(
                        color: Colors.orange,
                        borderColor: Colors.black12,
                      )
                  ),
                  FortuneItem(
                      child: Text("Yellow"),
                      style: FortuneItemStyle(
                        color: Colors.yellow,
                        borderColor: Colors.black12,
                      )
                  ),
                  FortuneItem(
                      child: Text("Green"),
                      style: FortuneItemStyle(
                        color: Colors.lightGreen,
                        borderColor: Colors.black12,
                      )
                  ),
                  FortuneItem(
                      child: Text("Blue"),
                      style: FortuneItemStyle(
                        color: Colors.blue,
                        borderColor: Colors.black12,
                      )
                  ),
                  FortuneItem(
                      child: Text("Purple"),
                      style: FortuneItemStyle(
                        color: Colors.deepPurpleAccent,
                        borderColor: Colors.black12,
                      )
                  ),
                  FortuneItem(
                      child: Text("Brown"),
                      style: FortuneItemStyle(
                        color: Colors.brown,
                        borderColor: Colors.black12,
                      )
                  ),
                  FortuneItem(
                      child: Text("Black"),
                      style: FortuneItemStyle(
                        color: Colors.black,
                        borderColor: Colors.black12,
                      )
                  ),
                  FortuneItem(
                      child: Text("White", style: TextStyle(color: Colors.black)),
                      style: FortuneItemStyle(
                        color: Colors.white,
                        borderColor: Colors.black12,
                      )
                  ),
                ],
              ),
            ),
            Text(''),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size.fromHeight(40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: Colors.redAccent,
                  // elevation: 5,
                  // shadowColor: Colors.black
              ),
              onPressed: () {
                setState(
                      () => controller.add(
                    Fortune.randomInt(0, items.length),
                  ),
                );
              },
              child: const Text(
                "Spin!",
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}