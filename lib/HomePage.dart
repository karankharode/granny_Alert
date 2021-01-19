import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

const gradientColor1 = const Color(0xfff7631b);
const gradientColor2 = const Color(0xffDE568A);
const shadowBlack = const Color(0xff888888);
const bgColor = const Color(0xffFFF5EE);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text("Giffy Dialogue"),
        backgroundColor: gradientColor1,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              boxShadow: [
                new BoxShadow(
                    color: shadowBlack,
                    blurRadius: 2,
                    spreadRadius: 1,
                    offset: Offset(1, 1))
              ],
              gradient:
                  LinearGradient(colors: [gradientColor1, gradientColor2])),
          child: FlatButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (_) => NetworkGiffyDialog(
                        image: Image.network(
                          "https://raw.githubusercontent.com/Shashank02051997/FancyGifDialog-Android/master/GIF's/gif14.gif",
                          fit: BoxFit.cover,
                        ),
                        entryAnimation: EntryAnimation.BOTTOM,
                        title: Text(
                          'Granny Eating Chocolate',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.w600),
                        ),
                        description: Text(
                          'This is a granny eating chocolate dialog box. This library helps you easily create fancy giffy dialog.',
                          textAlign: TextAlign.center,
                        ),
                        onOkButtonPressed: () {
                          Navigator.pop(context);
                        },
                      ));
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, bottom: 8, left: 39, right: 39),
              child: Text(
                "Click Me !",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
