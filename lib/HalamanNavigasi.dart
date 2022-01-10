import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainApp extends StatefulWidget {
  const MainApp({Key key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => HalamanUtama(),
        '/halamanDua' : (BuildContext context) {
          var argument = ModalRoute.of(context).settings.arguments as Person;
          return HalamanDua(person: argument);
        }
      }
    );
  }
}

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({Key key}) : super(key: key);

  @override
  _HalamanUtamaState createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () async {
            Navigator.pushReplacementNamed(
                context,
                '/halamanDua',
                arguments: Person(
                  namaLengkap: "Zayed Elfasa",
                  umur: 28
                ));

            // String backValue = await Navigator.push(
            //     context,
            //     CupertinoPageRoute(
            //         builder: (context) => HalamanDua(
            //               person: Person(
            //                 namaLengkap: "Zayed Elfasa",
            //                 umur: 28
            //               ),
            //             )));
            // print(backValue);
          },
          child: Text("Masuk"),
        ),
      ),
    );
  }
}

class HalamanDua extends StatefulWidget {
  @required
  Person person;

  HalamanDua({Key key, this.person}) : super(key: key);

  @override
  _HalamanDuaState createState() => _HalamanDuaState();
}

class _HalamanDuaState extends State<HalamanDua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // contoh 1
            Navigator.pop(context);
            // contoh 2 sama seperti contoh 1
            // Navigator.of(context).pop("Oke");
          },
        ),
        title: Text("Ini halaman 2"),
      ),
        body: Container(
      alignment: Alignment.center,
      child: Text("Nama Saya Adalah ${widget.person.namaLengkap} berumur ${widget.person.umur}"),
    ));
  }
}

class Person {
  String namaLengkap;
  int umur;

  Person({this.namaLengkap, this.umur});
}
