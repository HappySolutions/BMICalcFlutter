// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Icon(
          Icons.menu,
        ),
        title: Text('First App'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: onNotif,
          ),
          IconButton(onPressed: onPressed, icon: const Text('By')),
          // IconButton(
          //   icon: const Text('test1'),
          //   onPressed: () {
          //     print('object');
          //   },
          // ),
        ],
      ),
      body: Row(
        children: [
          Container(
            color: Colors.red,
            child: Text('First',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                )),
          ),
          Container(
            color: Colors.green,
            child: Text('Second',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                )),
          ),
        ],
      ),
      // Container(
      //   color: Colors.purple,
      //   width: double.infinity,

      //   // child: Column(
      //   //     mainAxisSize: MainAxisSize.min,
      //   //     mainAxisAlignment: MainAxisAlignment.center,
      //   //     children: [
      //   //       Container(
      //   //         color: Colors.orange,
      //   //         child: Text(
      //   //           'First Text',
      //   //           style: TextStyle(
      //   //             fontSize: 30.0,
      //   //             color: Colors.white,
      //   //           ),
      //   //         ),
      //   //       ),
      //   //       //   Expanded(
      //   //       //     child: Container(
      //   //       //       color: Colors.blue,
      //   //       //       child: Text(
      //   //       //         'second Text',
      //   //       //         style: TextStyle(fontSize: 30.0, color: Colors.white),
      //   //       //       ),
      //   //       //     ),
      //   //       //   ),
      //   //       //   Expanded(
      //   //       //     child: Container(
      //   //       //       color: Colors.green.shade300,
      //   //       //       child: Text(
      //   //       //         'third Text',
      //   //       //         style: TextStyle(fontSize: 30.0, color: Colors.white),
      //   //       //       ),
      //   //       //     ),
      //   //       //   ),
      //   //       //   Expanded(
      //   //       //     child: Container(
      //   //       //       color: Colors.yellowAccent.shade100,
      //   //       //       child: Text(
      //   //       //         'Fourth Text',
      //   //       //         style: TextStyle(fontSize: 30.0, color: Colors.black),
      //   //       //       ),
      //   //       //     ),
      //   //       //   ),
      //   //       // ],
      //   //     ]),
      // ),
    );
  }

  void onNotif() {
    // ignore: avoid_print
    print('button cLicked');
  }

  void onPressed() {
    // ignore: avoid_print
    print('text clickded');
  }
}
