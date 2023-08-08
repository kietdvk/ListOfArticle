import 'package:flutter/material.dart';
import 'package:flutter_listof/screens/home/card_article.dart';
import 'package:flutter_listof/screens/home/timeline_card.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: const Color.fromARGB(0, 255, 255, 255),
        leadingWidth: 180,
        toolbarHeight: 80,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Center(
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                      text: "Hello ",
                      style: TextStyle(
                        fontSize: 18,
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
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            width: 70,
            height: 70,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return const CardArticle();
              },
            ),
          ),
          Container(
            padding: EdgeInsetsDirectional.all(20),
            decoration: BoxDecoration(color: Colors.grey[100]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "List Of Article",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 500,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return TimelineCard();
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
