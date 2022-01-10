import 'package:flutter/material.dart';

class Meet15 extends StatefulWidget {
  const Meet15({Key key}) : super(key: key);

  @override
  _Meet15State createState() => _Meet15State();
}

class _Meet15State extends State<Meet15> {
  Color defaultTextColor;
  int valueNumber;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print("InitState berjalan...");

    setState(() {
      defaultTextColor = Colors.amber;
      valueNumber = 0;
    });
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    print("didChangeDependencies berjalan...");
    setState(() {
      defaultTextColor = Colors.redAccent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Contoh didChangeDependecies"),
          ),
          body: ListView.separated(
              itemBuilder: (context, index) {
                return Counter(number: index);
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },
              itemCount: 10)),
    );
  }
}

class Counter extends StatefulWidget {
  int number;
  Counter({Key key, this.number}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('deactivate : ${widget.number}');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    print('dispose : ${widget.number}');
  }

  @override
  void didUpdateWidget(covariant Counter oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);

    print('oldWidget : ${oldWidget.number}');
    print('newWidget : ${widget.number}');

    print("didUpdateWidget is running...");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        child: Text('Counter value is : ${widget.number}'));
  }
}
