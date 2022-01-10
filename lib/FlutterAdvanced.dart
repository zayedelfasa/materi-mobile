import 'package:flutter/material.dart';

class FlutterAdvanced extends StatefulWidget {
  int number;

  FlutterAdvanced({Key key, this.number}) : super(key: key);

  @override
  _FlutterAdvancedState createState() => _FlutterAdvancedState();
}

class _FlutterAdvancedState extends State<FlutterAdvanced> {
  Color textColor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      textColor = Colors.amber;
      widget.number = 0;
    });
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    print("Doing here..");

    setState(() {
      textColor = Theme.of(context).backgroundColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            alignment: Alignment.center,
            child: ListView.separated(
                separatorBuilder: (context, index) => Divider(),
                itemBuilder: (context, index) {
                  return NumberWidget(number: index + 1);
                },
                itemCount: 5)
        ),
      ),
    );
  }
}

class NumberWidget extends StatefulWidget {

  @required int number;

  NumberWidget({Key key, this.number}) : super(key: key);

  @override
  _NumberWidgetState createState() => _NumberWidgetState();
}

class _NumberWidgetState extends State<NumberWidget> {

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("${widget.number} Dispose this widget");
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("${widget.number} Deactive this widget");
  }

  @override
  void didUpdateWidget(covariant NumberWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');

    if(oldWidget.number != widget.number) {
      print('the number is not same');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 700,
        child: Text('Number ${widget.number}'));
  }
}

