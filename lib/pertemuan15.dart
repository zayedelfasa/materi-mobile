import 'package:flutter/material.dart';

// hello --> 1
// world --> 2
// kata lain --> 3

class MyApp2 extends StatefulWidget {
  const MyApp2({Key key}) : super(key: key);

  @override
  _MyApp2State createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      count--;
    });
  }

  void _handleClick(String value) {
    switch(value) {
      case 'Logout':
        print('Aplikasi logout');
        break;
      case 'Settings':
        print('Aplikasi Masuk ke pengaturan');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            leading: GestureDetector(
              onTap: () { /* Write listener code here */ },
              child: Icon(
                Icons.menu,  // add custom icons also
              ),
            ),
            actions: <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.search,
                      size: 26.0,
                    ),
                  )
              ),
              PopupMenuButton<String>(
                onSelected: _handleClick,
                itemBuilder: (BuildContext context) {
                  return {'Logout', 'Settings'}.map((String choice) {
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                    );
                  }).toList();
                },
              ),
            ],
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Sekolah Mobile"),
                Text("Flutter", style: TextStyle(fontSize: 12),)
              ],)
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$count'),
              ElevatedButton(
                  onPressed: () {
                    increment();
                  },
                  child: Text("Increment")),
              ElevatedButton(
                  onPressed: decrement,
                  child: Text("Decrement"))
            ],
          ),
        ),
      ),
    );
  }
}
