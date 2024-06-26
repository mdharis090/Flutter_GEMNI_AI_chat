import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("asset/spaces.jpg"), fit: BoxFit.cover)),
        child: Column(
          children: [
            Container(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "space pod",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.image_search)
                  ],
                ),
              ),
            ),
            Expanded(child: ListView()),
            Container(
              height: 100,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                            style: TextStyle(color: Colors.black),
                            cursorColor: Theme.of(context).primaryColor,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                fillColor: Colors.white,
                                filled: true))),
                    const SizedBox(width: 12),
                    CircleAvatar(
                      radius: 34,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Theme.of(context).primaryColor,
                        child: Center(
                          child: Icon(Icons.send),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
