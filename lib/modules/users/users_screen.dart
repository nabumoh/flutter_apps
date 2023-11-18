import 'package:flutter/material.dart';
import 'package:learn_course/models/user/user_model.dart';
/*
// 1. build item
// 2. build list of items
// 3. add item to list
*/

class UsersScreen extends StatelessWidget {
  UsersScreen({super.key});

  List<UserModel> users = [
    UserModel(id: 1, name: 'Nadeem Abumoh', phone: '+97250123456'),
    UserModel(id: 2, name: 'George', phone: '+221355325'),
    UserModel(id: 3, name: 'Roman', phone: '+4512143561'),
    UserModel(id: 4, name: 'Michael', phone: '+97250123456'),
    UserModel(id: 5, name: 'Rafael', phone: '+221355325'),
    UserModel(id: 6, name: 'santos', phone: '+4512143561'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          'Users',
        ),
        actions: [],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => buildUserItem(users[index]),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(start: 20.0),
          child: Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[400],
          ),
        ),
        itemCount: users.length,
      ),
    );
  }

  Widget buildUserItem(UserModel user) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.blue,
              child: Text(
                '${user.id}',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user.name}',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  '${user.phone}',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
