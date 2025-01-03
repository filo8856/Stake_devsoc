import 'package:flutter/material.dart';
import 'main.dart';

class History extends StatefulWidget {
  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Colors.white,
        leading: IconButton(
          iconSize:50,
          icon: Icon(Icons.arrow_back, color: Colors.black),
          // Custom icon
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          'History',
          style: TextStyle(
            //fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 30),
          Center(
            child: Text(
              "Result     Wager     Alike      Net",
              style: TextStyle(
                //fontStyle: FontStyle.italic,
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Text(
              give(),
              style: TextStyle(
                //fontStyle: FontStyle.italic,
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String give() {
  String sc = '';
  for (int i = 0; i < hist.length; i++) {
    sc = sc + hist[i] + '\n';
  }
  return sc;
}
