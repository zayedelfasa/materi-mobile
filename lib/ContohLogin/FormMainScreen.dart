import 'package:flutter/material.dart';
import 'package:kelas_widget/ContohLogin/FormSetting.dart';

class FormMainScreen extends StatefulWidget {
  static String routeName = "/FormMainScreen";

  String username;
  String password;

  FormMainScreen({Key key, this.username, this.password}) : super(key: key);

  @override
  _FormMainScreenState createState() => _FormMainScreenState();
}

class _FormMainScreenState extends State<FormMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Screen"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Text("${widget.username} : ${widget.password}"),
            ElevatedButton(
              onPressed: onClickPres,
              child: Text("Setting"),
            ),
          ],
        ),
      ),
    );
  }

  void onClickPres() {
    Navigator.pushNamed(context, FormSetting.routeName);
  }
}
