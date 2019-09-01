import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class  MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator App",
      home: new HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.red,
        brightness: Brightness.light,
      ),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1=0,num2=0,sum=0;
  final TextEditingController t1= new TextEditingController(text: "0");
  final TextEditingController t2= new TextEditingController(text: "0");
  void doadd(){
    setState(() {
      num1 =int.parse(t1.text);
      num2 =int.parse(t2.text);
      sum= num1+num2;
    });
  }
  void dosub(){
    setState(() {
      num1 =int.parse(t1.text);
      num2 =int.parse(t2.text);
      sum= num1-num2;
    });
  }
  void domul(){
    setState(() {
      num1 =int.parse(t1.text);
      num2 =int.parse(t2.text);
      sum= num1*num2;
    });
  }
  void dodiv(){
    setState(() {
      num1 =int.parse(t1.text);
      num2 =int.parse(t2.text);
      sum= (num1~/num2);
    });
  }
  void clear(){
    setState(() {
      t1.text="0";
      t2.text="0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: EdgeInsets.all(30.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
           new Text("OUTPUT : $sum",
           style: TextStyle(fontSize: 30,
           fontWeight: FontWeight.bold,
           color: Colors.purple
           ),
           ),
            new TextField(
              keyboardType: TextInputType.number,
              controller: t1,
              decoration: new InputDecoration(
                  hintText: "Enter no. 1"
              ),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              controller: t2,
              decoration: new InputDecoration(
                  hintText: "Enter no. 2"
              ),
            ),
            new Padding(padding: EdgeInsets.only(top: 30)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  color: Colors.lightGreenAccent,
                  child: new Text("+"),
                  onPressed: doadd,
                ),
                new RaisedButton(
                  color: Colors.lightGreenAccent,
                  child: new Text("-"),
                  onPressed: dosub,
                ),


              ],


            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  color: Colors.lightGreenAccent,
                  child: new Text("*"),
                  onPressed: domul,
                ),
                new RaisedButton(
                  color: Colors.lightGreenAccent,
                  child: new Text("/"),
                  onPressed: dodiv,
                ),


              ],
            ),
           new Padding(padding: EdgeInsets.only(top: 10),),
           new Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               new RaisedButton(
                 child: new Text("clear"),
                 onPressed: clear,
                 color: Colors.blue,
               )
             ],

    )
          ],
        ),
      ),

    );
  }
}


