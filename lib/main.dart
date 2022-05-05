import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MySecondApp());
}

class YemekSayfasi extends StatefulWidget {
  const YemekSayfasi({Key? key}) : super(key: key);

  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {

  int yemekNo=1;
  int corbaNo=1;
  int tatliNo=1;

  void yemeksecimi(){

    setState(() {
      corbaNo= Random().nextInt(3)+1;
      yemekNo=Random().nextInt(3)+1;
      tatliNo=Random().nextInt(3)+1;
    });
  }

  List<String> corbaAdlari =[
    'Mercimek Çorbası',
    'Tarhana Çorbası',
    'Tavuk Çorbası'
  ];

  List<String> yemekAdlari =[
    'Karnıyarık',
    'Mantı',
    'Kuru Fasülye'
  ];

  List<String> tatliAdlari =[
    'Kadayıf',
    'Baklava',
    'Sütlaç'
  ];




  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
        child: FlatButton(
          highlightColor: Colors.white,
          splashColor: Colors.white,
        onPressed: yemeksecimi,
          child: Image.asset('assets/corba_$corbaNo.jpg'),)
            ),
            ),
                                                                     //flex boyutları belirledi, expanded ettik cunku ekrana sıgdırdık
          Text(
            corbaAdlari[corbaNo-1],
            style: TextStyle(fontSize: 20),

          ),
          Container(
            width: 200,
              child: Divider(height: 15),),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(12.0),
    child: FlatButton(
      highlightColor: Colors.white,
      splashColor: Colors.white,
      onPressed: yemeksecimi,
      child: Image.asset('assets/yemek_$yemekNo.jpg'),),
    ),
    ),
          Text(
            yemekAdlari[yemekNo-1],
            style: TextStyle(fontSize: 20),

          ),
          Container(
            width: 200,
            child: Divider(height: 15),),


          Expanded(child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: FlatButton(
        highlightColor: Colors.white,
        splashColor: Colors.white,
        onPressed: yemeksecimi,
      child: Image.asset('assets/tatli_$tatliNo.jpg'),),
      ),
      ),
          Text(
            tatliAdlari[tatliNo-1],
            style: TextStyle(fontSize: 20),

          ),
          Container(
            width: 200,
            child: Divider(height: 15),),
        ],
      ),

    );
  }
}






class MySecondApp extends StatelessWidget {
  const MySecondApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(

        backgroundColor: Colors.white,
          appBar:
          AppBar(
            centerTitle: true,
              title: Text("Bugün ne yesem ?",
                style: TextStyle(
                    color:Colors.black),
              ),
              backgroundColor: Colors.teal
          ),
     body: YemekSayfasi(),


        ),

    );

  }
}

