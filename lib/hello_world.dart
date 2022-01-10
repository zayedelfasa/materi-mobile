import 'package:flutter/material.dart';

class TextHelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Hello world");
  }
}

class MainAPp extends StatefulWidget {
  const MainAPp({Key key}) : super(key: key);

  @override
  _MainAPpState createState() => _MainAPpState();
}

class _MainAPpState extends State<MainAPp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: ElevatedButton(
          onPressed: () {},
        ),
      ),
    );
  }
}
