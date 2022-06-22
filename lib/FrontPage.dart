import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FirstApp(),
  ));
}

class FirstApp extends StatefulWidget {
  const FirstApp({Key? key}) : super(key: key);

  @override
  State<FirstApp> createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Photo Viewing App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )),
        actions: [
          Icon(
            Icons.search,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Upload Image",
              style: TextStyle(color: Colors.white),
            ),
            style: TextButton.styleFrom(backgroundColor: Colors.green),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: GridView.count(
          crossAxisCount: 1,
          mainAxisSpacing: 1,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://www.filmibeat.com/wimgm/1366x70/desktop/2019/08/xshahrukh-khan_7.jpg.pagespeed.ic.vCuN8l_t68.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Sharukh Khan"),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Image.network(
                    "https://www.filmibeat.com/wimgm/1366x70/desktop/2019/08/xshahrukh-khan_7.jpg.pagespeed.ic.vCuN8l_t68.jpg"),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text("Iam Wonderfull Right"),
                  ],
                ),
                Row(children: [
                  SizedBox(width: 360),
                  Icon(Icons.favorite_border),
                  Icon(Icons.share),
                  Icon(Icons.bookmark_border),
                ]),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1ZVHbWtyijgP2x6MSoIpdzNB39jddcIxJdDrj00QkM79Z9GcIFreZ82hk6TtAUCVgjlM&usqp=CAU.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Amir Khan"),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Image.network(
                    "https://www.filmibeat.com/wimgm/1366x70/desktop/2019/08/xshahrukh-khan_7.jpg.pagespeed.ic.vCuN8l_t68.jpg"),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text("Amazing pic of sharukh"),
                  ],
                ),
                Row(children: [
                  SizedBox(width: 360),
                  Icon(Icons.favorite_border),
                  Icon(Icons.share),
                  Icon(Icons.bookmark_border),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
