import 'package:flutter/material.dart';

class TestAppBar extends StatelessWidget {
  const TestAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: IconButton(
          onPressed: () {
            // go to user profile here
          },
          icon: const Icon(
            Icons.person,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // log out here
            },
            icon: const Icon(
              Icons.logout,
            ),
          ),
          IconButton(
            onPressed: () {
              // display details here
            },
            icon: const Icon(
              Icons.details,
            ),
          ),
        ],
        title: const Text('Home Page'),
      );

  }
}