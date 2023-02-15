import 'package:flutter/material.dart';

class IncoMode extends StatefulWidget {
  const IncoMode({super.key});

  @override
  State<IncoMode> createState() => _IncoModeState();
}

class _IncoModeState extends State<IncoMode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1F1928),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Image.asset('assets/boysun.png')),
            Text(
              "Post/Comment Anonymously",
              style: TextStyle(
                color: Color(0xff8B898E),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'apitest');
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(131, 42),
                  primary: Colors.white,
                ),
                child: Text(
                  "Explore",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ))
          ]),
    );
  }
}
