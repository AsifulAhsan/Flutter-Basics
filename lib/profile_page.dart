import 'package:flutter/material.dart';

const int itemCounter = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCounter,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Item ${(index + 1)}'),
          leading: const Icon(Icons.person_2_rounded),
          trailing: const Icon(Icons.select_all_rounded),
          onTap: () {
            debugPrint('Item ${(index + 1)}' ' Selected');
          },
        );
      },
    );
  }
}
