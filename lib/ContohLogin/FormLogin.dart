import 'package:flutter/material.dart';
import 'package:kelas_widget/ContohLogin/FormMainScreen.dart';

class FormLogin extends StatefulWidget {
  static String routeName = "/";

  const FormLogin({Key key}) : super(key: key);

  @override
  _FormLoginState createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  double allPadding = 8.0;
  TextEditingController _textControllerUsername = TextEditingController();
  TextEditingController _textControllerPassword = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    this.context;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () async {
            bool valuePop =  await Navigator.maybePop(context);
            print(valuePop);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.all(allPadding),
                child: TextField(
                  controller: _textControllerUsername,
                  decoration: InputDecoration(
                    hintText: "Username"
                  ),
                ),
            ),
            Padding(
              padding: EdgeInsets.all(allPadding),
              child: TextField(
                controller: _textControllerPassword,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password",
                ),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Padding(
              padding: EdgeInsets.all(allPadding),
              child: ElevatedButton(
                onPressed: onPressLogin,
                child: Text("Login"),
              )
            ),
          ],
        ),
      ),
    );
  }

  void onPressLogin() {
    // syntaxnya apa ?
    // kiri : key
    // kanan : value
    Map map = {
      "username" : _textControllerUsername.text,
      "password" : _textControllerPassword.text
    };

    Navigator.pushReplacementNamed(context, FormMainScreen.routeName, arguments: map);
  }
}
