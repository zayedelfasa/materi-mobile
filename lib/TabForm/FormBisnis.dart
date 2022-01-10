import 'package:flutter/material.dart';

class FormBisnis extends StatefulWidget {
  const FormBisnis({Key key}) : super(key: key);

  @override
  _FormBisnisState createState() => _FormBisnisState();
}

class _FormBisnisState extends State<FormBisnis> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => FormBisnisMain(),
        FormBisnisSecond.routeName: (ctx) {
          return FormBisnisSecond();
        }
      },
    );
  }
}

class FormBisnisMain extends StatefulWidget {
  const FormBisnisMain({Key key}) : super(key: key);

  @override
  _FormBisnisMainState createState() => _FormBisnisMainState();
}

class _FormBisnisMainState extends State<FormBisnisMain> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, FormBisnisSecond.routeName);
            },
            child: Text("Menuju halaman lain"))
      ],
    );
  }
}

class FormBisnisSecond extends StatefulWidget {
  static String routeName = "/halamanUtamaLainnya";

  const FormBisnisSecond({Key key}) : super(key: key);

  @override
  _FormBisnisSecondState createState() => _FormBisnisSecondState();
}

class _FormBisnisSecondState extends State<FormBisnisSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("FormBisnisSecond"),
      ),
    );
  }
}


