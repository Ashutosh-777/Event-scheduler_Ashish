import 'package:flutter/material.dart';
import 'package:event_scheduler_ashish/newevent.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Myapp();
}

class _Myapp extends State<MyApp> {
  final List<String> _list = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Event Scheduler',
            style: TextStyle(
              fontSize: 23,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.deepPurpleAccent[700],
        ),
        body:

        Container(
          color: Colors.deepPurpleAccent,
          child: ListView.builder(

            itemCount: _list.length,
            itemBuilder: ((context, index) {return Container(
              width: 300,
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular( 10),
              ),

              //alignment:Alignment(-0.5,-0.5),
              child:Center(
                child: Text('${_list[index]}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,

                  ),

                ),
              ),
            );
            }),

          ),
        ),



        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(
            backgroundColor: Colors.deepPurpleAccent[700],
            onPressed: () async {
              String newText = await Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NewEventScreen()));
              setState(() {
                _list.add(newText);
              });
            },
            child: Icon(Icons.add),
          );
        }),
      ),
    );
  }
}