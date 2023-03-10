import 'package:flutter/material.dart';
import 'package:flutter_basics/home_page.dart';
import 'package:flutter_basics/profile_page.dart';

void main() {
  runApp(const MyApp()); // the runnApp argument runs the MyApp Widget
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //removes the "debug" banner
      theme: ThemeData(primarySwatch: Colors.amber), //sets the appbar color
      home: const RootPage(), //calls the stateful class RootPage
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> pages = const [
    HomePage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold is a Widget; every UPPERCASE lettered word is a Widget

      appBar: AppBar(
        //adds an appbar, "appBar" is an Argument
        //every lowercase lettered word is an Argument
        title: const Text('Flutter'), // arg. title takes and shows W. Text,
      ),
      body: pages[currentPage],
      floatingActionButton: FloatingActionButton(
        //adds a floating action button
        onPressed: () {
          debugPrint('Button Pressed.'); //prints console mess. on button press
        },
        child: const Icon(
            Icons.add_box_outlined), //adds icons inside the empty button
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'profile'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index; // sets the currentP var to sel. var, index
          });
        },
        selectedIndex: currentPage, //changes the destination [des.]→[sel.]
      ),
    );
  }
}
