import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';
import 'history.dart';

void main() => runApp(MaterialApp(home: Mains()));

class Mains extends StatefulWidget {
  @override
  _MainsState createState() => _MainsState();
}

List<String> hist = [];
int tempmax = (bal / a).floor();
int tempbal = 10;
int result = 1;
int f = 5;
int sc = 0;
int bal = 10;
int wager = 1;
int r1 = 6;
int r2 = 6;
int r3 = 6;
int r4 = 6;
String w = '';
int a = 2;
String pe = '';
var pc = TextEditingController();
int a1 = 1;
bool te = false;
int max = 5;

void tp() {
  if (a == 4) {
    te = true;
  } else {
    te = false;
  }
}

bool te3 = false;

void tp3() {
  if (a == 3) {
    te3 = true;
  } else {
    te3 = false;
  }
}

bool te2 = true;

void tp2() {
  if (a == 2) {
    te2 = true;
  } else {
    te2 = false;
  }
}

class _MainsState extends State<Mains> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Colors.white,
        leading: IconButton(
          iconSize: 55,
          icon: Icon(Icons.history),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => History()),
            );
          },
        ),
        centerTitle: true,
        title: Image.asset(
          "assets/Stake_logo.svg.png",
          height: 150.0,
          width: 175,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'Bal\n\$$bal',
                  style: TextStyle(
                    //fontStyle: FontStyle.italic,
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 80.0),
                Text(
                  'Wager\n\$$wager',
                  style: TextStyle(
                    //fontStyle: FontStyle.italic,
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  '$r1',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 100.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '$r2',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 100.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '$r3',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 100.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '$r4',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 100.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                te2
                    ? FloatingActionButton.extended(
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  onPressed: () {
                    setState(() {
                      if (wager <= bal / 2) {
                        a = 2;
                        max = (bal / a).floor();
                      }
                    });
                    tp();
                    tp2();
                    tp3();
                  },
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  label: Text(
                    '2 Alike',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
                    : FloatingActionButton.extended(
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  onPressed: () {
                    setState(() {
                      if (wager <= bal / 2) {
                        a = 2;
                        max = (bal / a).floor();
                      }
                    });
                    tp();
                    tp2();
                    tp3();
                  },
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  label: Text(
                    '2 Alike',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                te3
                    ? FloatingActionButton.extended(
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  onPressed: () {
                    setState(() {
                      if (wager <= bal / 3) {
                        a = 3;
                        max = (bal / a).floor();
                      }
                    });
                    tp();
                    tp2();
                    tp3();
                  },
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  label: Text(
                    '3 Alike',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
                    : FloatingActionButton.extended(
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  onPressed: () {
                    setState(() {
                      if (wager <= bal / 3) {
                        a = 3;
                        max = (bal / a).floor();
                      }
                    });
                    tp();
                    tp2();
                    tp3();
                  },
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  label: Text(
                    '3 Alike',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                te
                    ? FloatingActionButton.extended(
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  onPressed: () {
                    setState(() {
                      if (wager <= bal / 4) {
                        a = 4;
                        max = (bal / a).floor();
                      }
                    });
                    tp();
                    tp2();
                    tp3();
                  },
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  label: Text(
                    '4 Alike',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
                    : FloatingActionButton.extended(
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  onPressed: () {
                    setState(() {
                      if (wager <= bal / 4) {
                        a = 4;
                        max = (bal / a).floor();
                      }
                    });
                    tp();
                    tp2();
                    tp3();
                  },
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  label: Text(
                    '4 Alike',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: SizedBox(
                height: 60,
                width: 150,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: pc,
                  onFieldSubmitted: (value) {
                    pc.clear();
                  },
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(color: Colors.black, width: 3.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(color: Colors.black, width: 3.0),
                    ),
                    hintText: 'Max=$max',
                    labelText: 'Enter Wager',
                    //errorText: pe,
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    //border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            FloatingActionButton.extended(
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(500),
              ),
              onPressed: () {
                if (wager <= bal / a) {
                  result = wager * a;
                  tempbal = bal;
                  f = 5;
                  sc = 0;
                  Timer.periodic(Duration(milliseconds: 50), (timer) {
                    setState(() {
                      pe='';
                      r1 = Random().nextInt(6) + 1;
                    });

                    sc++;
                    if (sc >= 100) {
                      timer.cancel();
                    }
                  });
                  sc = 0;
                  Timer.periodic(Duration(milliseconds: 50), (timer) {
                    setState(() {
                      r2 = Random().nextInt(6) + 1;
                    });

                    sc++;
                    if (sc >= 140) {
                      timer.cancel();
                    }
                  });
                  sc = 0;
                  Timer.periodic(Duration(milliseconds: 50), (timer) {
                    setState(() {
                      r3 = Random().nextInt(6) + 1;
                    });

                    sc++;
                    if (sc >= 180) {
                      timer.cancel();
                    }
                  });
                  sc = 0;
                  Timer.periodic(Duration(milliseconds: 50), (timer) {
                    setState(() {
                      r4 = Random().nextInt(6) + 1;
                    });

                    sc++;
                    if (sc >= 195) {
                      timer.cancel();
                      setState(() {
                        if (wager > bal / a) {
                          pe = "Invalid Wager";
                        } else {
                          pe = '';
                          int s = 0;
                          a1 = 1;
                          if (r1 == r2) s++;
                          if (r1 == r3) s++;
                          if (r1 == r4) s++;
                          if (r2 == r3) s++;
                          if (r2 == r4) s++;
                          if (r4 == r3) s++;
                          if (s == 6) a1 = 4;
                          if (s == 3) a1 = 3;
                          if (s == 1 || s == 2) a1 = 2;
                          if (a1 == a) {
                            f = 1;
                            bal += (a * wager);
                            hist.insert(
                              0,
                              "Won             $wager              $a           +\$$result",
                            );
                          } else {
                            f = 0;
                            bal = bal - (a * wager);
                            hist.insert(
                              0,
                              "Lost             $wager              $a           -\$$result",
                            );
                          }
                          max = (bal / a).floor();
                        }
                      });
                    }
                  });
                } else {
                  setState(() {
                    f=5;
                    pe = "Invalid Wager";
                  });
                }
              },
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              label: Text(
                'GO',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            FloatingActionButton.extended(
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(500),
              ),
              onPressed: () {
                if (wager <= bal / a) {
                  tempmax = (bal / a).floor();
                  result = tempmax * a;
                  tempbal = bal;
                  f = 5;
                  sc = 0;
                  Timer.periodic(Duration(milliseconds: 50), (timer) {
                    setState(() {
                      r1 = Random().nextInt(6) + 1;
                    });
                    sc++;
                    if (sc >= 100) {
                      timer.cancel();
                    }
                  });
                  sc = 0;
                  Timer.periodic(Duration(milliseconds: 50), (timer) {
                    setState(() {
                      r2 = Random().nextInt(6) + 1;
                    });

                    sc++;
                    if (sc >= 140) {
                      timer.cancel();
                    }
                  });
                  sc = 0;
                  Timer.periodic(Duration(milliseconds: 50), (timer) {
                    setState(() {
                      r3 = Random().nextInt(6) + 1;
                    });

                    sc++;
                    if (sc >= 180) {
                      timer.cancel();
                    }
                  });
                  sc = 0;
                  Timer.periodic(Duration(milliseconds: 50), (timer) {
                    setState(() {
                      r4 = Random().nextInt(6) + 1;
                    });

                    sc++;
                    if (sc >= 195) {
                      timer.cancel();

                      setState(() {
                        if (wager > bal / a) {
                          pe = "Invalid Wager";
                        } else {
                          pe = '';
                          int s = 0;
                          a1 = 1;
                          if (r1 == r2) s++;
                          if (r1 == r3) s++;
                          if (r1 == r4) s++;
                          if (r2 == r3) s++;
                          if (r2 == r4) s++;
                          if (r4 == r3) s++;
                          if (s == 6) a1 = 4;
                          if (s == 3) a1 = 3;
                          if (s == 1 || s == 2) a1 = 2;
                          if (a1 == a) {
                            f = 1;
                            bal += (a * tempmax);
                            hist.insert(
                              0,
                              "Won     $wager   $a alike    \$$tempbal        +\$$result",
                            );
                          } else {
                            f = 0;
                            bal = bal - (a * tempmax);
                            hist.insert(
                              0,
                              "Lost     $wager   $a alike    \$$tempbal        -\$$result",
                            );
                          }
                          max = (bal / a).floor();
                        }
                      });
                    }
                  });
                }
              },
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              label: Text(
                'Wager Max \$$max',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            (f == 1)
                ? Text(
              'You won $result',
              style: TextStyle(
                //fontStyle: FontStyle.italic,
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            )
                : (f == 0)
                ? Text(
              'You lost $result',
              style: TextStyle(
                //fontStyle: FontStyle.italic,
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            )
                : (pe == 'Invalid Wager')
                ? Text(
              'Invalid Wager',
              style: TextStyle(
                //fontStyle: FontStyle.italic,
                color: Colors.red,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            )
                : SizedBox(height: 1),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    pc.addListener(() {
      setState(() {
        if (pc.text.isNotEmpty) {
          try {
            wager = int.parse(pc.text);
          } catch (e) {
            pe = "Invalid input";
          }
        }
      });
    });
  }
}
