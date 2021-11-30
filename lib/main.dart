import 'package:flutter/material.dart';
import 'package:md_radio/mdRadio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectIndex = 0;
  int selectIndex1 = 0;
  int selectIndex2 = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('孟德的选择',style:TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.w600),
          ),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              mdRadio(
                rTitle:"孟德",
                initialIndex: 0,
                selectIndex: this.selectIndex,
                callback: (value){
                  setState(() {
                    this.selectIndex = value;
                  });
                },
              ),
              mdRadio(
                rTitle:"丞相",
                initialIndex: 1,
                selectIndex: this.selectIndex,
                callback: (value){
                  setState(() {
                    this.selectIndex = value;
                  });
                },
              ),
              mdRadio(
                rTitle:"匹夫",
                initialIndex: 2,
                selectIndex: this.selectIndex,
                callback: (value){
                  setState(() {
                    this.selectIndex = value;
                  });
                },
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              mdRadio(
                rTitle:"大乔",
                // isLeadingIcon: true,
                // iconMargin: 20,
                initialIndex: 0,
                selectIndex: this.selectIndex1,
                callback: (value){
                  setState(() {
                    this.selectIndex1 = value;
                  });
                },
              ),
              mdRadio(
                isLeadingIcon: true,
                rTitle:"小乔",
                initialIndex: 1,
                selectIndex: this.selectIndex1,
                callback: (value){
                  setState(() {
                    this.selectIndex1 = value;
                  });
                },
              ),
              mdRadio(
                rTitle:"尚香",
                initialIndex: 2,
                selectIndex: this.selectIndex1,
                callback: (value){
                  setState(() {
                    this.selectIndex1 = value;
                  });
                },
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              mdRadio(
                rTitle:"大弟",
                // isLeadingIcon: true,
                // iconMargin: 20,
                initialIndex: 0,
                selectIndex: this.selectIndex2,
                callback: (value){
                  setState(() {
                    this.selectIndex2 = value;
                  });
                },
              ),
              mdRadio(
                rTitle:"二哥",
                iconMargin: 81,
                initialIndex: 1,
                selectIndex: this.selectIndex2,
                callback: (value){
                  setState(() {
                    this.selectIndex2 = value;
                  });
                },
              ),
              mdRadio(
                rTitle:"三哥",
                initialIndex: 2,
                selectIndex: this.selectIndex2,
                callback: (value){
                  setState(() {
                    this.selectIndex2 = value;
                  });
                },
              ),
            ],
          ),
        ],
      )
    );
  }
}
