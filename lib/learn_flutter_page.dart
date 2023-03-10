import 'package:flutter/material.dart';

// reacting with the home_page button redirects here

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter!'),
        automaticallyImplyLeading: false,
        // ↑ this disables the automatic page navigations
        // ↓ the following code seg. applies custom page navigation button
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Action');
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        //makes the following W. scrollable
        child: Column(
          children: [
            Image.asset('images/meme guy.jpg'),
            const SizedBox(height: 10),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(3),
              padding: const EdgeInsets.all(10),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'You can do it!',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitch ? Colors.blue : Colors.green,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                debugPrint('Elevated button pressed');
              },
              child: const Text('Elevated Button'),
            ), //added an elevated button that prints debug text
            OutlinedButton(
              onPressed: () {
                debugPrint('Outlined button pressed');
              },
              child: const Text('Outlined Button'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Text button pressed');
              },
              child: const Text('Text Button'),
            ),
            GestureDetector(
              //↑detects gesture
              behavior: HitTestBehavior.opaque,
              //↑this enables gesture detection in bounds
              onTap: () {
                //function works on tap
                debugPrint('Row is Tapped!');
              },
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly, //aligns the row
                //following list displays Icons and a text in between
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.cyan,
                  ),
                  Text('The Row Widget!'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.cyan,
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(() {
                  isSwitch = newBool;
                });
              },
            ),
            Checkbox(
              value: isCheckbox,
              onChanged: (bool? newBool) {
                setState(
                  () {
                    isCheckbox = newBool;
                  },
                );
              },
            ),
            Image.network(//←adds image from net
                'https://i.kym-cdn.com/entries/icons/original/000/016/546/hidethepainharold.jpg'),
          ],
        ),
      ),
    );
  }
}
