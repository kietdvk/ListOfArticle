import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 150,
        toolbarHeight: 80,
        leading: Center(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: "Hello ",
                    style: TextStyle(
                      color: Colors.black,
                    )),
                TextSpan(
                  text: "ZendVN",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
        actions: [
          Container(
            width: 80,
            height: 80,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
          )
        ],
      ),
      body: Column(
        children: [
          Container(),
          Text("List Of Article"),
          Row(
            children: [
              Text("08:00 AM"),
              Container(),
            ],
          )
        ],
      ),
    );
  }
}
