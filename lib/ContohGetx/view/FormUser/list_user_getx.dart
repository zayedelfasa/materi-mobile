import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:kelas_widget/ContohGetx/controller/controller_listuser.dart';
import 'package:kelas_widget/ContohGetx/model/users.dart';
import 'package:kelas_widget/ContohGetx/service/config_repository/global_repository.dart';

class ListUserGetx extends StatelessWidget {
  ListUserGetx({Key key}) : super(key: key);

  static String routeName = "/ListUserGetx";
  final _userController = Get.put(ListUserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contoh API Users"),
        actions: [IconButton(icon: Icon(Icons.add), onPressed: null)],
      ),
      body: GetBuilder<ListUserController>(
          init: _userController,
          builder: (ListUserController c) {
            
            switch (c.state) {
              case StateLoading.isInitialize:
                return Container();
                break;
              case StateLoading.isLoading:
                return Center(child: CircularProgressIndicator());
              case StateLoading.isDone:
                return ListView.builder(
                    itemCount: c.listUser.length,
                    itemBuilder: (ctx, index) {
                      final Users _user = c.listUser[index];
                      return ListTile(
                        onTap: () {
                          c.setUser(
                              title: _user.username,
                              body: _user.email,
                              id: _user.id.toString());
                        },
                        title: Text(_user.name),
                        subtitle: Text(_user.email),
                      );
                    });
                break;
              default:
                return Container();
            }

            // if (c.state == StateLoading.isLoading) {
            //   return Center(child: CircularProgressIndicator());
            // }

            // if (c.state == StateLoading.isDone) {
            //   return ListView.builder(
            //       itemCount: c.listUser.length,
            //       itemBuilder: (ctx, index) {
            //         final Users _user = c.listUser[index];
            //         return ListTile(
            //           onTap: () {
            //             c.setUser(
            //                 title: _user.username,
            //                 body: _user.email,
            //                 id: _user.id.toString());
            //           },
            //           title: Text(_user.name),
            //           subtitle: Text(_user.email),
            //         );
            //       });
            // }

            // return Container();
          }),
    );
  }
}

class ContohA extends StatefulWidget {
  const ContohA({Key key}) : super(key: key);

  @override
  _ContohAState createState() => _ContohAState();
}

class _ContohAState extends State<ContohA> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text("Set Variabel i $i"),
        onPressed: () {
          i++;
          setState(() {});
          // update() -> Getx
          // notifyListener() -> provider
          // setState(() {
          //   i++;
          // });
        },
      ),
    );
  }
}
