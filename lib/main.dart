import 'package:flutter/material.dart';
import './categories.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Lora',
        textTheme: TextTheme( //for determining the theme of text inside the app
          headline6: TextStyle(fontFamily: "Lora"),
        ),
      ),
      home: Categories(), //look friend , this mean that categories class will be the first class displayed when the application start
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meals' , style: Theme.of(context).textTheme.headline6), //using the text font family style here 
        backgroundColor: Colors.black87,
        actions: [
          Icon(Icons.more_vert),
        ],
      ),
      body: Center(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'sky',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 30,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded( //remember expanded widget make it's child widget use all the free space inside screen
                  flex: 3, //flex property determine the size that this widget take from screen
                  child: FlatButton(
                    child: Text(
                      'Subscribe',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.deepPurple,
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: FlatButton.icon(
                    icon: Icon(
                      Icons.cancel,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Cncel',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.black87,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
          
        )),
        
      ),
    
      
    );
  }
}



