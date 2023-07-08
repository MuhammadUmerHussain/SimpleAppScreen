import 'package:flutter/material.dart';
import 'obj.dart';
class Quotetem extends StatelessWidget {
  final quote;
   final void Function()? delete;
  const Quotetem({
    this.quote,
     this.delete
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(16, 16, 16, 0),

        child: Container(
          padding:EdgeInsets.all(12),
          color:Colors.white70 ,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(quote.q
                  ,style:TextStyle(
                    color: Colors.grey,
                    fontSize: 16,

                  )),
              SizedBox(height: 10),
              Text("Author: ${quote.author}"
                  ,style:TextStyle(
                      color: Colors.grey,
                      fontSize: 10
                  )),
              SizedBox(height: 10),
              ElevatedButton.icon(onPressed: delete, icon:Icon(Icons.delete),label: Text("Delete"),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red[900])), )
              
            ],
          ),
        ));
  }
}