import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Just Practice Only",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 32,
                  ),
                ),
              ),
              ExpansionTile(
                leading: Icon(Icons.linear_scale_outlined),
                title: Text("View Replies"),
                trailing: Text(""),
                children: [
                  Text("Ram"),
                  Text("Hari"),
                  Text("Sita"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
