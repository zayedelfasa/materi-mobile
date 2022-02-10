import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kelas_widget/ContohSQFlite/view/main_view/sqflite_controller.dart';

class SQFliteView extends StatelessWidget {
  SQFliteView ({ Key key }) : super(key: key);

  static String routeName = "/SQFliteView";

  final _controller = Get.put(SQFliteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contoh SQFlite"),
      ),
      body: GetBuilder<SQFliteController>(
        init: _controller,
        builder: (c) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // insertTableKelas
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      child: Text("Insert Kelas"),
                      onPressed: c.insertTableKelas,
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    child: Text("Insert Siswa"),
                    onPressed: c.insertTableSiswa,
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    child: Text("Read Siswa"),
                    onPressed: c.readTableSiswa,
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    child: Text("Update Siswa"),
                    onPressed: c.updateTable,
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    child: Text("Delete Siswa"),
                    onPressed: c.deleteTable,
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    child: Text("Custom Query"),
                    onPressed: c.customQuery,
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      child: Text("KELUAR APLIKASI"),
                      onPressed: c.logout,
                    )
                ),
              ),
            ],
          );
        }
      ),
    );
  }
}