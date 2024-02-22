import 'package:flutter/material.dart';
import 'package:charify/utils/constants.dart';

class WorkInProgressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor, // Set the app bar color
        title: Text('Work in Progress'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Divider(
            height: 1,
            color: Colors.grey, // Set the divider color
          ),
          Expanded(
            child: Center(
              child: Text(
                'Under Maintanence!',
                style: TextStyle(
                  fontSize: 26,
                  color: kPrimaryColor, // Set the text color
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
