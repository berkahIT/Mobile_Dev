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
  int like = 0;
  int dislike = 0;

  Color changeBg = Colors.white; 
  Color textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("YioTibe"),

          // bagian change bgnya
          actions: [
            // untuk yang putih ke hitam
            IconButton(
                onPressed: () {
                  setState(() {
                    changeBg = Colors.black;
                    textColor = Colors.white;
                  });
                },
                icon: Icon(
                  Icons.nightlight,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    changeBg = Colors.white;
                    textColor = Colors.black;
                  });
                },
                icon: Icon(
                  Icons.sunny,
                  color: Colors.white,
                ))
          ],
        ),
        backgroundColor: changeBg,
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            // untuk nampilin gambar
            Image.asset(
              "img/bgHome(2).png",
              width: 400,
              height: 250,
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.add_reaction,
                          color: Color.fromARGB(255, 0, 255, 13),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          like.toString(),
                          style: TextStyle(color: textColor),
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    ElevatedButton.icon(
                        onPressed: () {
                          setState(() {
                            like++;
                          });
                        },
                        icon: Icon(Icons.thumb_up),
                        label: Text("Like"))
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.add_reaction_rounded,
                          color: Color.fromARGB(255, 255, 0, 0),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          dislike.toString(),
                          style: TextStyle(color: textColor),
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    ElevatedButton.icon(
                        onPressed: () {
                          setState(() {
                            dislike++;
                          });
                        },
                        icon: Icon(Icons.thumb_down),
                        label: Text("Dislike"))
                  ],
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 30)),
            Container(
              margin: EdgeInsets.only(bottom: 15),
              height: 2,
              color: textColor,
            ),
            Text(
              "Comment",
              style: TextStyle(
                  color: textColor, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10)),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
              textAlign: TextAlign.justify,
              style: TextStyle(color: textColor),
            )
          ],
        ),
      ),
    );
  }
}

// sekian dan terima kasih
