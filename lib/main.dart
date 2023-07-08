import 'package:flutter/material.dart';
import 'obj.dart';
import 'Quotetemp.dart';
void main() {
  runApp( MaterialApp(
    home: Home(),
  ));
}
class Home extends StatefulWidget {

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}





class _HomeState extends State<Home> {
  List<Quote> quotes=[Quote(author: "Umer",q: "Good boy"),Quote(q:"Hey" ,author: "Hello")];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Here Is Your Boi"),
        centerTitle: true,
        backgroundColor: Colors.red[900],

      ),
      body:
          Column(
            children: quotes.map((qu)=> Quotetem(quote:qu,delete:(){setState(() {
              quotes.remove(qu);
            });} ,)).toList(),
          )
     ,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text("+"),
        backgroundColor: Colors.red[900],
      ),

    );
  }
}

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  primary: Colors.white,
  minimumSize: Size(88, 44),
  padding: EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
  backgroundColor: Colors.blue,
);