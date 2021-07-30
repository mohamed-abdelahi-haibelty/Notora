import 'package:bac_note/components/result_remark_widget.dart';
import 'package:bac_note/components/subject_card.dart';
import 'package:bac_note/data/data.dart';
import 'package:bac_note/screens/result_page.dart';
import 'package:bac_note/screens/who_are_we_screen.dart';
import 'package:bac_note/styling/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BacNote',
      debugShowCheckedModeBanner: false,
      home: BacNote(),
    );
  }
}

class BacNote extends StatefulWidget {
  double sciences = 0;
  double physics = 0;
  double maths = 0;
  double arabic = 0;
  double french = 0;
  double ir = 0;
  double english = 0;
  double sport = 0;
  Data data = Data();
  @override
  _BacNoteState createState() => _BacNoteState();
}

class _BacNoteState extends State<BacNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        leading: SizedBox(
          width: 5,
        ),
        title: Center(
          child: Text(
            'BacNote',
            style: kLogoStyle,
          ),
        ),
        actions: [
          GestureDetector(
            child: Icon(
              Icons.info,
              color: Colors.black,
              size: 32,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WhoAreWePage(),
                ),
              );
            },
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(children: [
          /* Image(
            image: AssetImage('assets/images/background.jpeg'),
            fit: BoxFit.contain,
          ),*/
          Container(
            child: ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    SubjectCard('Sciences Naturelles', widget.sciences),
                    SubjectCard('Physique et Chimie', widget.physics),
                    SubjectCard('Mathématiques', widget.maths),
                    SubjectCard('Arabe', widget.arabic),
                    SubjectCard('Francais', widget.french),
                    SubjectCard('Instruction Réligieuse', widget.ir),
                    SubjectCard('Anglais', widget.english),
                    SubjectCard('Education Physique', widget.sport),
                  ],
                ),
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 30, bottom: 50, left: 30, right: 30),
                    height: 70,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Calculer',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
