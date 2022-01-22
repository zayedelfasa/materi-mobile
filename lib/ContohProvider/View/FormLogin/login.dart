import 'package:flutter/material.dart';
import 'package:kelas_widget/ContohProvider/View/FormListBuku/list_book.dart';
import 'package:kelas_widget/ContohProvider/state/state_login.dart';
import 'package:provider/provider.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({Key key}) : super(key: key);

  static String routeName = "/FormLogin";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<LoginState>(
      builder: (ctx, repo, _) {
        final _state = Provider.of<LoginState>(ctx);
        return Center(
          child: ElevatedButton(
            onPressed: () {
              _state.setLogin();
              Navigator.pushReplacementNamed(ctx, ListBookStateLess.routeName);
            }, 
            child: Text("LOGIN")),
        );
      },
    ));
  }
}
