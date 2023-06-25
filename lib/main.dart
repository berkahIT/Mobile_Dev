import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  List<Widget> widgets = [];

  List<String> matkul = ["Bahasa Inggris", "Matematika", "RPL"];

  int counts = 0;

  String nama = "Matkul";

  // _MainAppState() {
  //   for (int i = 0; i < 20; i++) {
  //     widgets.add(
  //       Text(
  //         "Data ke - $i",
  //         style: TextStyle(fontSize: 40),
  //       ),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pertemuan 6"),
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widgets.removeLast();
                      counts--;
                    });
                  },
                  child: Text(
                    "Kurangi",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widgets.add(Text(
                        "Matkul " + matkul[counts],
                        style: TextStyle(fontSize: 50),
                      ));
                      counts++;
                    });
                  },
                  child: Text(
                    "Tambah",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: widgets,
            ),
          ],
        ),
      ),
    );
  }
}
