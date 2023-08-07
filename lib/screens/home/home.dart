import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 180,
        toolbarHeight: 80,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Center(
            child: RichText(
              text: TextSpan(
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
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CardArticle(),
                      CardArticle(),
                      CardArticle(),
                      CardArticle(),
                      CardArticle(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsetsDirectional.all(20),
            decoration: BoxDecoration(color: Colors.grey[100]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "List Of Article",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
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

class TimelineCard extends StatelessWidget {
  TimelineCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              "08:00 AM",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [Colors.white, Colors.blue]),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardArticle extends StatelessWidget {
  const CardArticle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: 5),
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [Colors.white, Colors.blue],
        ),
      ),
    );
  }
}
