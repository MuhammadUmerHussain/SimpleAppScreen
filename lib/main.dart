import 'package:flutter/material.dart';
import 'obj.dart';
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

Widget quoterTemplate (Quote quote){

  return Card(
  margin: EdgeInsets.fromLTRB(16, 16, 16, 0),

    child: Container(
      padding:EdgeInsets.all(12),
      color:Colors.pink ,
     child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(quote.q
        ,style:TextStyle(
              color: Colors.white,
              fontSize: 16,

            )),
        SizedBox(height: 10),
        Text("Author: ${quote.author}"
            ,style:TextStyle(
                color: Colors.white,
                fontSize: 10
            ))
      ],
    ),
  ));

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
            children: quotes.map((qu)=> quoterTemplate(qu)).toList(),
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