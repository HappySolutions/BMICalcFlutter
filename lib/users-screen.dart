import 'package:flutter/material.dart';

class UsersModel {
  final int id;
  final String name;
  final String phone;

  UsersModel({
    required this.id,
    required this.name,
    required this.phone,
  });
}

class UsersScreen extends StatelessWidget {
  List<UsersModel> users = [
    UsersModel(id: 1, name: 'hytham Mohammed', phone: '0123456789'),
    UsersModel(id: 2, name: 'hend Mohammed', phone: '0123456789'),
    UsersModel(id: 3, name: 'heba Mohammed', phone: '0123456789'),
    UsersModel(id: 4, name: 'esraa Mohammed', phone: '0123456789'),
    UsersModel(id: 5, name: 'alla Mohammed', phone: '0123456789'),
    UsersModel(id: 6, name: 'hytham Mohammed', phone: '0123456789'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Users',
          ),
        ),
        body: ListView.separated(
          itemBuilder: (context, item) => buildUserItam(users[item]),
          separatorBuilder: (context, item) => Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0,
              end: 20.0,
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ),
          itemCount: users.length,
        ));
  }

  Widget buildUserItam(UsersModel user) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              child: Text(
                '${user.id}',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${user.name}',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${user.phone}',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
