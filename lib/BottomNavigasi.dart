import 'package:flutter/material.dart';
import 'package:kelas_widget/TabForm/FormBisnis.dart';
import 'package:kelas_widget/TabForm/FormHome.dart';
import 'package:kelas_widget/TabForm/FormSchool.dart';

class BottomNavigasi extends StatefulWidget {
  const BottomNavigasi({Key key}) : super(key: key);

  @override
  _BottomNavigasiState createState() => _BottomNavigasiState();
}

class _BottomNavigasiState extends State<BottomNavigasi> {

  int selectedIndex = 0;

  List<String> appBarTitle = ["Home", "Bussines", "School"];

  List<Widget> widgetOption = <Widget>[
    FormHome(),
    FormBisnis(),
    FormSchool(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(appBarTitle[selectedIndex]),
      //   actions: <Widget>[
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Icon(
      //         Icons.search,
      //         color: Colors.white,
      //       ),
      //     ),
      //     PopupMenuButton(
      //         onSelected: (String value) {
      //           switch(value) {
      //             case 'Menu 1':
      //               print('Menu 1 di-klik');
      //               break;
      //             case 'Menu 2':
      //               print('Menu 2 di-klik');
      //               break;
      //             case 'Menu 3':
      //               print('Menu 3 di-klik');
      //               break;
      //           }
      //         },
      //         itemBuilder: (context) {
      //           return {'Menu 1', 'Menu 2', 'Menu 3'}.map((String choice) {
      //             return PopupMenuItem<String>(
      //               value: choice,
      //               child: Text(choice),
      //             );
      //           }).toList();
      //         })
      //
      //   ],
      // ),
      body: widgetOption.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          print('$index');
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amber[800],
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),
    );
  }
}


