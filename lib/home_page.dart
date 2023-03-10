import 'package:flutter/material.dart';
import 'package:flutter_basics/learn_flutter_page.dart';

//the following stateless widget handles the HomePage class
//which handles the home_page button for navigating in between pages.

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        //↑ adds an elavated button in center of the screen
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                //↓ this returns to LearnFlutterPage class
                return const LearnFlutterPage();
              },
            ),
          );
        },
        child: const Text('Learn Flutter'), //shows the text inside the button
      ),
    );
  }
}
