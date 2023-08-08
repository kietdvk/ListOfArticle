import 'package:flutter/material.dart';

class TimelineCard extends StatelessWidget {
  const TimelineCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          const Expanded(
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
                gradient: const LinearGradient(
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
