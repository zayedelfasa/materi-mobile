import 'package:flutter/material.dart';
import 'package:kelas_widget/ContohLogin/FormLogin.dart';
import 'package:kelas_widget/ContohLogin/FormMainScreen.dart';

class FormSetting extends StatefulWidget {
  static String routeName = "/formSetting";

  const FormSetting({Key key}) : super(key: key);

  @override
  _FormSettingState createState() => _FormSettingState();
}

class _FormSettingState extends State<FormSetting> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // onBackLeading();
        bool value = false;
        await showDialog(
            context: context,
            builder: (BuildContext ctx) {
              return AlertDialog(
                title: Text("Apakah Anda yakin Keluar dari Setting?"),
                actions: [
                  TextButton(
                    child: const Text('Tidak'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  TextButton(
                    child: const Text('Ya'),
                    onPressed: () {
                      value = true;
                    },
                  ),
                ],
              );
            });
        return value;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Setting"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: onBackLeading,
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: onBackPress,
                  child: Text("Logout"))
            ],
          ),
        ),
      ),
    );
  }

  Future<void> onBackPress() async {
    // gunakan alertDialog
    return await showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: Text("Apakah Anda yakin Keluar dari Aplikasi?"),
            actions: [
              TextButton(
                child: const Text('Tidak'),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.pop(context);
                },
              ),
              TextButton(
                child: const Text('Ya'),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, FormLogin.routeName, (route) => false);
                },
              ),
            ],
          );
    });
  }

  Future<void> onBackLeading() async {
    // gunakan alertDialog

    bool valuePop = await Navigator.canPop(context);
    print(valuePop);

    // valuePop ? Navigator.pop(context) : null;

    // return await showDialog(
    //     context: context,
    //     builder: (BuildContext ctx) {
    //       return AlertDialog(
    //         title: Text("Apakah Anda yakin Keluar dari Setting?"),
    //         actions: [
    //           TextButton(
    //             child: const Text('Tidak'),
    //             onPressed: () {
    //               Navigator.pop(context);
    //             },
    //           ),
    //           TextButton(
    //             child: const Text('Ya'),
    //             onPressed: () {
    //               // close dari dialognya
    //               Navigator.pop(context);
    //               // close dari form setting
    //               Navigator.pop(context);
    //             },
    //           ),
    //         ],
    //       );
    //     });
  }
}
