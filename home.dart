import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:humanitarian_icons/humanitarian_icons.dart';

MyApp() {
  check() {
    print("Quick Check");
    Fluttertoast.showToast(
        msg: "Quick Check",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.pink.shade50,
        textColor: Colors.deepPurple,
        fontSize: 16.0);
  }

  firstadd() {
    print("First Aid Information...");
    Fluttertoast.showToast(
        msg: "First Aid",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.pink.shade50,
        textColor: Colors.deepPurple,
        fontSize: 16.0);
  }

  child() {
    print("Meet Your Child Specilist...");
    Fluttertoast.showToast(
        msg: "Child Specilist",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.pink.shade50,
        textColor: Colors.deepPurple,
        fontSize: 16.0);
  }

  feedback() {
    print("Give Your Valuable Feedback...");
    Fluttertoast.showToast(
        msg: "FeedBack",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.pink.shade50,
        textColor: Colors.deepPurple,
        fontSize: 16.0);
  }

  var mybody = Container(
    width: 300,
    height: 550,
    child: Column(
      children: <Widget>[
        Text(
          'Your Health, Our Care',
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        FloatingActionButton(
          onPressed: check,
          child: Icon(
            Icons.check_circle_outline,
            color: Colors.blue,
          ),
          backgroundColor: Colors.blueGrey,
        ),
        FloatingActionButton(
          onPressed: firstadd,
          child: Icon(
            Icons.healing,
            color: Colors.red,
          ),
          backgroundColor: Colors.blueGrey,
        ),
        FloatingActionButton(
          onPressed: child,
          child: Icon(
            Icons.child_care,
            color: Colors.orange,
          ),
          backgroundColor: Colors.blueGrey,
        ),
        FloatingActionButton(
          onPressed: feedback,
          child: Icon(
            Icons.star,
            color: Colors.lightBlue,
          ),
          backgroundColor: Colors.blueGrey,
        ),
      ],
    ),
    decoration: BoxDecoration(
      color: const Color(0xd3d3d3),
      image: const DecorationImage(
        image: NetworkImage(
            'https://github.com/Uni-wv/Hot_App/raw/master/logo2.jpg'),
        fit: BoxFit.cover,
      ),
      border: Border.all(
        color: Colors.grey.shade400,
        width: 8,
      ),
      borderRadius: BorderRadius.circular(20),
    ),
  );
  var mylogo = Image.network(
      'https://github.com/Uni-wv/Hot_App/raw/master/Ultimate.jpg');
  var Emer =
      FlutterStatusbarcolor.setStatusBarColor(Colors.blueAccent.shade100);
  var call = Icon(
    Icons.call,
  );
  var acc = Icon(
    HumanitarianIcons.ambulance,
    size: 35.0,
  );
  Emergency() {
    print("Called Doctor");
    Fluttertoast.showToast(
        msg: "Called Doctor",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green.shade500,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  Ambulance() {
    print("Arriving Soon");
    Fluttertoast.showToast(
        msg: "Arriving Soon",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red.shade500,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  var myaccbutton = IconButton(
    icon: acc,
    onPressed: Ambulance,
  );

  var mycallbutton = IconButton(
    icon: call,
    onPressed: Emergency,
  );

  var myhome = Scaffold(
    appBar: AppBar(
      title: Text('Health Check'),
      backgroundColor: Colors.deepPurple.shade100,
      leading: mylogo,
      actions: <Widget>[
        mycallbutton,
        myaccbutton,
      ],
    ),
    body: Center(child: mybody),
    backgroundColor: Colors.blueAccent.shade100,
  );

  return MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );
}
