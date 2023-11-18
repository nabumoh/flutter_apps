import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text(
          'Baby Steps App'
        ),
        actions: const [
          IconButton(onPressed: onNotification, icon: Icon(Icons.notification_important)),
          IconButton(onPressed: onSearch, icon: Icon(Icons.search)),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.green,
            height: 100.0,
            child: const Text(
              'First Text',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
          ),
          Container(
            color: Colors.red,
            height: 100.0,
            child: const Text(
              'Second Text',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
          ),
          const Text(
            'Third Text',
            style: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.blueAccent,
              fontSize: 30.0,
            ),
          ),
          const Text(
            'Fourth Text',
            style: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.amber,
              fontSize: 30.0,
            ),
          ),
        ],
      ),
    );
  }
}


void onNotification()
{
  // ignore: avoid_print
  print('Notification Clicked');
}

void onSearch()
{
  // ignore: avoid_print
  print('Search Clicked');
}

