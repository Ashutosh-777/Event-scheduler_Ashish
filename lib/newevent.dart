import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewEventScreen();
}

class _NewEventScreen extends State<NewEventScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Event"),
        backgroundColor:Colors.deepPurpleAccent[700] ,
      ),
      body: Container(
        color: Colors.deepPurpleAccent,
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(

              width: 350,

              decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent[700],
                  borderRadius: BorderRadius.circular( 30.0)
              ),




              child: TextField(
                minLines: 1,
                maxLines: 8,
                cursorColor: Colors.deepPurpleAccent[700],

                decoration: InputDecoration(

                  prefixIcon: const Icon(
                    Icons.calendar_month,
                    color: Colors.white,
                  ),labelText: "Event" ,
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),

                ),
                style: TextStyle(
                    color: Colors.white
                ),
                controller:_textEditingController,
              ),
            ),






            Builder(builder: (context) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  child: Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(minimumSize: Size( 350, 45),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular( 30.0)
                          ),
                          primary: Colors.grey,
                          onPrimary: Colors.white,

                          textStyle: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          String newEventText = _textEditingController.text;
                          Navigator.of(context).pop(newEventText);
                        },
                        child: Text("ADD")),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
