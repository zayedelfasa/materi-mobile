import 'package:flutter/material.dart';

class FormHome extends StatefulWidget {
  const FormHome({Key key}) : super(key: key);

  @override
  _FormHomeState createState() => _FormHomeState();
}

class _FormHomeState extends State<FormHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

      ),
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => HalamanUtamaHome(),
        HalamanUtamaLainnya.routeName : (BuildContext context) {

          var map = ModalRoute.of(context).settings.arguments as Map;

          return HalamanUtamaLainnya(
            nama: map["nama"],
            umur: map["umur"],
          );
        }
      },
    );
  }
}

class HalamanUtamaHome extends StatefulWidget {
  const HalamanUtamaHome({Key key}) : super(key: key);

  @override
  _HalamanUtamaHomeState createState() => _HalamanUtamaHomeState();
}

class _HalamanUtamaHomeState extends State<HalamanUtamaHome> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Column(
        children: [
          ElevatedButton(
              onPressed: () {

                // kalo kita buat map
                // key : value
                Map map = {
                  "nama" : "Zayed",
                  "umur" : 27
                };
                Navigator.pushNamed(context, HalamanUtamaLainnya.routeName, arguments: map);
              },
              child: Text("Menuju halaman lain"))
        ],
    ),
      );
  }
}

class HalamanUtamaLainnya extends StatefulWidget {

  static String routeName =
 "/halamanUtamaLainnya";
  String nama;
  int umur;

  HalamanUtamaLainnya({Key key, this.nama, this.umur}) : super(key: key);

  @override
  _HalamanUtamaLainnyaState createState() => _HalamanUtamaLainnyaState();
}

class _HalamanUtamaLainnyaState extends State<HalamanUtamaLainnya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Text("${widget.nama} dan umur ${widget.umur}"),
      ),
    );
  }
}


