import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  int _counter1 = 0;
  int _counter2 = 0;

  //Counter 1 Methods
  void _incrementCounter1(){
    setState(() {
      _counter1++;
    });
  }
  void _decrementCounter1() {
    setState(() {
      _counter1--;
    });
  }
  void _resetCounter1() {
    setState(() {
      _counter1 = 0;
    });
  }

  //Counter 2 Methods
  void _incrementCounter2(){
    setState(() {
      _counter2++;
    });
  }
  void _decrementCounter2() {
    setState(() {
      _counter2--;
    });
  }
  void _resetCounter2() {
    setState(() {
      _counter2 = 0;
    });
  }

  //Reset Both Counters
  void _resetCounters() {
    setState(() {
      _counter1 = 0;
      _counter2 = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WoolyYarnGo!'),
        backgroundColor: Colors.red[300],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        backgroundColor: Colors.amber[50],
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red[300],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Your logo image
                  Image.asset(
                    'assets/images/woolyyarngologo.png', // Path to your logo image asset
                    width: 75,
                    height: 75,
                  ),
                  const SizedBox(height: 10), // Add some space between logo and text
                  const Text(
                    'WoolyYarnGo!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),

            ),

            // //NOTES
            // ListTile(
            //   leading: const Icon(Icons.adb),
            //   title: const Text('Quick Notes'),
            //   onTap: () {
            //     Navigator.of(context).push(
            //         MaterialPageRoute(builder: (context) => const Page2('Tab2')));
            //     //Navigator.pop(context);
            //   },
            // ),

            //CREDITS
            ListTile(
              leading: const Icon(Icons.adb),
              title: const Text('Credits'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Page3('Tab3')));
                //Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.amber[50],
        ),
        child: Column(
            //Home Page
            children:[
              const Text(''),
              const Text('Rows and Stitches Counter', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
              const Text(''),
              const Text('Rows', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              Text(
                _counter1.toString(),
                style: const TextStyle(color: Colors.redAccent, fontSize: 90),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _resetCounter1();
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                    ),
                    child: const Icon(Icons.refresh, color: Colors.white70),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_counter1 > 0) {
                        _decrementCounter1();
                      }
                    },
                    child: const Icon(Icons.remove),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _incrementCounter1();
                    },
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
              const Text(''),
              const Text('Stitches', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              Text(
                _counter2.toString(),
                style: const TextStyle(color: Colors.redAccent, fontSize: 90),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _resetCounter2();
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                    ),
                    child: const Icon(Icons.refresh, color: Colors.white70),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_counter2 > 0) {
                        _decrementCounter2();
                      }
                    },
                    child: const Icon(Icons.remove),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _incrementCounter2();
                    },
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
              const Text(''),
              const Text(''),
              const Text('Reset All Counters', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const Text(''),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _resetCounters();
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                    ),
                    child: const Icon(Icons.refresh, color: Colors.white70),
                  ),
                ],
              ),
            ]
        ),
      ),
    );
  }
}

// //Notes PAGE
// class Page2 extends StatelessWidget {
//   final String inTab;
//   const Page2(this.inTab);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Quick Notes'), backgroundColor: Colors.red[300],),
//       body: Container(
//         width: double.infinity,
//         decoration: BoxDecoration(
//           color: Colors.amber[50],
//         ),
//         child: Column(
//           children: [
//
//           ],
//         ),
//       ),
//     );
//   }
// }

//CREDITS PAGE
class Page3 extends StatelessWidget {
  final String inTab;
  const Page3(this.inTab);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Credits'), backgroundColor: Colors.red[300],),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.amber[50],
        ),
        child: Column(
          children: [
            const Text(''),
            const Text(''),
            const Text(''),
            //Logo image goes here
            Image.asset('assets/images/woolyyarngologo.png',
              width: 350,
              height: 350,
            ),

            //Text
            const Text('App Made By William Go', style: TextStyle(fontSize: 24)),
            const Text('CS 4750 at Cal Poly Pomona', style: TextStyle(fontSize: 24)),
            const Text('Created for Crochet Enthusiasts', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}


