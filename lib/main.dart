import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
  void div(String s) {}
}

class _MyAppState extends State<MyApp> {
  int th = 1;
  double num1 = 0, num2 = 0, res = 0;
  var ch = '';
  var txt = TextEditingController();
  Brightness brightness;

  void calc() {
    setState(() {
      switch (ch) {
        case '+':
          res = num1 + num2;
          break;
        case '-':
          res = num1 - num2;
          break;
        case '*':
          res = num1 * num2;
          break;
        case '/':
          res = num1 / num2;
          break;
        default:
          res = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
          primaryColor: Colors.grey,
          primaryColorDark: Colors.white12,
          errorColor: Colors.red,
          brightness: Brightness.light,
          primarySwatch: Colors.red),

//      theme: ThemeData(
//          primaryColor: Colors.grey,
//          primaryColorDark: Colors.white12,
//          errorColor: Colors.red,
//          brightness: Brightness.light,
//          primarySwatch: Colors.red),
      //darkTheme: ThemeData.dark(),
      home: SafeArea(
        child: new Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.deepOrange[50],

//        appBar: new AppBar(
//            //title: Text('Calculator'),
//            ),
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 500.0,
                    padding: EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: txt,
                      decoration: InputDecoration(

                        //labelText: 'No 1',
                          hoverColor: Colors.red,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(55.0),
                            borderSide: BorderSide(),
                          )),
                      textAlign: TextAlign.right,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          fontSize: 20.0, height: 2.0, color: Colors.black38),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(30.0),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
//                    Padding(
//                      padding: EdgeInsets.all(10.0),
//                    ),
//                      Container(
//                        child: IconButton(
//                          icon: Icon(Icons.wb_sunny),
//                          color: Colors.black,
//                          onPressed: () {
//                            setState(() {});
//                          },
//                          splashColor: Colors.grey,
//                          iconSize: 50.0,
//                        ),
//                        decoration: BoxDecoration(
//                            border: Border.all(
//                              color: Colors.black38,
//                            ),
//                            borderRadius: BorderRadius.circular(15.0)),
//                        width: 70.0,
//                        height: 60.0,
//                        margin: EdgeInsets.all(10.0),
//                      ),
                      Container(
                        child: FlatButton(
                          child: Text(
                            "C",
                            style: TextStyle(
                              fontSize: 50.0,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {
                            txt.text = '';
                          },
                          color: Colors.white12,
                          textColor: Colors.black38,
                          splashColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black38)),
                        ),
                        width: 70.0,
                        height: 60.0,
                        margin: EdgeInsets.all(10.0),
                      ),
                      Container(
                        child: FlatButton(
                          child: Text(
                            "<-",
                            style: TextStyle(
                              fontSize: 40.0,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {},
                          color: Colors.white12,
                          textColor: Colors.black38,
                          splashColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black38)),
                        ),
                        width: 70.0,
                        height: 60.0,
                        margin: EdgeInsets.all(10.0),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
//                    Padding(
//                      padding: EdgeInsets.all(10.0),
//                    ),
                      Container(
                        child: FlatButton(
                          child: Text(
                            "7",
                            style: TextStyle(
                              fontSize: 50.0,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {
                            txt.text += '7';
                          },
                          color: Colors.white12,
                          textColor: Colors.black38,
                          splashColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black38)),
                        ),
                        width: 70.0,
                        height: 60.0,
                        margin: EdgeInsets.all(10.0),
                      ),
                      Container(
                        child: FlatButton(
                          child: Text(
                            "8",
                            style: TextStyle(
                              fontSize: 50.0,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {
                            txt.text += '8';
                          },
                          color: Colors.white12,
                          textColor: Colors.black38,
                          splashColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black38)),
                        ),
                        width: 70.0,
                        height: 60.0,
                        margin: EdgeInsets.all(10.0),
                      ),
                      Container(
                        child: FlatButton(
                          child: Text(
                            "9",
                            style: TextStyle(
                              fontSize: 50.0,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {
                            txt.text += '9';
                          },
                          color: Colors.white12,
                          textColor: Colors.black38,
                          splashColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black38)),
                        ),
                        width: 70.0,
                        height: 60.0,
                        margin: EdgeInsets.all(10.0),
                      ),
                      Container(
                        child: FlatButton(
                          child: Text(
                            "/",
                            style: TextStyle(
                              fontSize: 50.0,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {
                            num1 = double.parse(txt.text);
                            ch = '/';
                            txt.clear();
                          },
                          color: Colors.white12,
                          textColor: Colors.black38,
                          splashColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black38)),
                        ),
                        width: 70.0,
                        height: 60.0,
                        margin: EdgeInsets.all(10.0),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
//                    Padding(
//                      padding: EdgeInsets.all(10.0),
//                    ),
                      Container(
                        child: FlatButton(
                          child: Text(
                            "4",
                            style: TextStyle(
                              fontSize: 50.0,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {
                            txt.text += '4';
                          },
                          color: Colors.white12,
                          textColor: Colors.black38,
                          splashColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black38)),
                        ),
                        width: 70.0,
                        height: 60.0,
                        margin: EdgeInsets.all(10.0),
                      ),

                      Container(
                        child: FlatButton(
                          child: Text(
                            "5",
                            style: TextStyle(
                              fontSize: 50.0,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {
                            txt.text += '5';
                          },
                          color: Colors.white12,
                          textColor: Colors.black38,
                          splashColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black38)),
                        ),
                        width: 70.0,
                        height: 60.0,
                        margin: EdgeInsets.all(10.0),
                      ),
                      Container(
                        child: FlatButton(
                          child: Text(
                            "6",
                            style: TextStyle(
                              fontSize: 50.0,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {
                            txt.text += '6';
                          },
                          color: Colors.white12,
                          textColor: Colors.black38,
                          splashColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black38)),
                        ),
                        width: 70.0,
                        height: 60.0,
                        margin: EdgeInsets.all(10.0),
                      ),
                      Container(
                        child: FlatButton(
                          child: Text(
                            "*",
                            style: TextStyle(
                              fontSize: 50.0,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {
                            num1 = double.parse(txt.text);
                            ch = '*';
                            txt.clear();
                          },
                          color: Colors.white12,
                          textColor: Colors.black38,
                          splashColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black38)),
                        ),
                        width: 70.0,
                        height: 60.0,
                        margin: EdgeInsets.all(10.0),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
//                    Padding(
//                      padding: EdgeInsets.all(10.0),
//                    ),
                      Container(
                        child: FlatButton(
                          child: Text(
                            "1",
                            style: TextStyle(
                              fontSize: 50.0,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {
                            txt.text += '1';
                          },
                          color: Colors.white12,
                          textColor: Colors.black38,
                          splashColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black38)),
                        ),
                        width: 70.0,
                        height: 60.0,
                        margin: EdgeInsets.all(10.0),
                      ),
//                    SizedBox(
//                      width: 10.0,
//                    ),
                      Container(
                        child: FlatButton(
                          child: Text(
                            "2",
                            style: TextStyle(
                              fontSize: 50.0,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {
                            txt.text += '2';
                          },
                          color: Colors.white12,
                          textColor: Colors.black38,
                          splashColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black38)),
                        ),
                        width: 70.0,
                        height: 60.0,
                        margin: EdgeInsets.all(10.0),
                      ),
                      Container(
                        child: FlatButton(
                          child: Text(
                            "3",
                            style: TextStyle(
                              fontSize: 50.0,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {
                            txt.text += '3';
                          },
                          color: Colors.white12,
                          textColor: Colors.black38,
                          splashColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black38)),
                        ),
                        width: 70.0,
                        height: 60.0,
                        margin: EdgeInsets.all(10.0),
                      ),
                      Container(
                        child: FlatButton(
                          child: Text(
                            "-",
                            style: TextStyle(
                              fontSize: 50.0,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {
                            num1 = double.parse(txt.text);
                            ch = '-';
                            txt.clear();
                          },
                          color: Colors.white12,
                          textColor: Colors.black38,
                          splashColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black38)),
                        ),
                        width: 70.0,
                        height: 60.0,
                        margin: EdgeInsets.all(10.0),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
//                    Padding(
//                      padding: EdgeInsets.all(10.0),
//                    ),
                      Container(
                        child: FlatButton(
                          child: Text(
                            "0",
                            style: TextStyle(
                              fontSize: 50.0,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {
                            txt.text += '0';
                          },
                          color: Colors.white12,
                          textColor: Colors.black38,
                          splashColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black38)),
                        ),
                        width: 70.0,
                        height: 60.0,
                        margin: EdgeInsets.all(10.0),
                      ),
//                    SizedBox(
//                      width: 10.0,
//                    ),
                      Container(
                        child: FlatButton(
                          child: Text(
                            ".",
                            style: TextStyle(
                              fontSize: 50.0,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {
                            txt.text += '.';
                          },
                          color: Colors.white12,
                          textColor: Colors.black38,
                          splashColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black38)),
                        ),
                        width: 70.0,
                        height: 60.0,
                        margin: EdgeInsets.all(10.0),
                      ),
                      Container(
                        child: FlatButton(
                          child: Text(
                            "=",
                            style: TextStyle(
                              fontSize: 50.0,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {
                            num2 = double.parse(txt.text);
                            calc();
                            txt.text = '$res';
                            num1 = res;
                            res = 0;
                            num2 = 0;
                            ch = '';
                          },
                          color: Colors.white12,
                          textColor: Colors.black38,
                          splashColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black38)),
                        ),
                        width: 70.0,
                        height: 60.0,
                        margin: EdgeInsets.all(10.0),
                      ),
                      Container(
                        child: FlatButton(
                          child: Text(
                            "+",
                            style: TextStyle(
                              fontSize: 50.0,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {
                            num1 = double.parse(txt.text);
                            ch = '+';
                            txt.clear();
                          },
                          color: Colors.white12,
                          textColor: Colors.black38,
                          splashColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black38)),
                        ),
                        width: 70.0,
                        height: 60.0,
                        margin: EdgeInsets.all(10.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
