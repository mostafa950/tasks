import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// dart
class Count extends StatefulWidget{
  @override
  _CountState createState() => _CountState();
}

class _CountState extends State<Count> {
   int _counter = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text('Flutter & MobX'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            top: 150,
          ),
          child: Column(
            children: [
              Text(
                'Counter',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '${_counter}' ,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 55,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                        height: 40,
                        color: Colors.green,
                        child: MaterialButton(
                            onPressed: (){
                              setState(() {
                                _counter ++ ;
                              });
                            },
                          child: Row(
                            children: [
                              Icon(Icons.add),
                              SizedBox(width: 5,),
                              Text(
                                'Add'
                              ),
                            ],
                          ),
                        )
                    ),
                    SizedBox(width: 100,),
                    Container(
                        width: 100,
                        height: 40,
                        color: Colors.orange,
                        child: MaterialButton(
                          onPressed: (){
                            setState(() {
                              _counter -- ;
                            });
                          },
                          child: Row(
                            children: [
                              Icon(Icons.remove),
                              SizedBox(width: 5,),
                              Text(
                                  'Minus'
                              ),
                            ],
                          ),
                        )
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                  width: 100,
                  height: 40,
                  color: Colors.red,
                  child: MaterialButton(
                    onPressed: (){
                      setState(() {
                        _counter = 0 ;
                      });
                    },
                    child: Row(
                      children: [
                        Icon(Icons.reply_rounded),
                        SizedBox(width: 5,),
                        Text(
                            'Reset'
                        ),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}