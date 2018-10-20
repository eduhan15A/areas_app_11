import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Calculo de Areas',
      theme: new ThemeData(          // Add the 3 lines from here...
        primaryColor: Colors.blueAccent,
      ),

      home: new RandomWords(),
    );
  }
}


class RandomWordsState extends State<RandomWords> {
  final List<WordPair> _suggestions = <WordPair>[];
  final Set<WordPair> _saved = new Set<WordPair>();   // Add this line.
  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    // final WordPair wordPair = new WordPair.random();
    //return new Text(wordPair.asPascalCase);
    return new Scaffold (                   // Add from here...
      appBar: new AppBar(
        title: new Text('Calculo de Areas'),
                           // ... to here.
      ),

      body:
          new Column(

            children: <Widget>[

              Container(
                padding: EdgeInsets.all(26.0),
                child: Center(

              child:new Text("Selecciona una figura",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32.0, color: Colors.blueGrey)),

              ),
              ),
              new Expanded(

                child: new  ListView(
                  padding: new EdgeInsets.symmetric(vertical: 8.0),
                  children: <Widget>[
                         /* ListTile (
                            title: Text('Texto'),
                          )*/
                   new GestureDetector(
                      onTap:  () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SecondScreen()),
                        );
                      }
                      ,
                      child: new Card(

                          child: new Row(
                           children: <Widget>[
                             new  IconButton(icon: const Icon(Icons.filter_hdr)),
                             new Column(
                               children: <Widget>[
                                 new Text("Triángulo")
                               ],
                             )
                              ]
                          )

                      ),
                    )
                    ,
                    new GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SecondScreen()),
                        );
                      }
                      ,
                      child: new Card(

                          child: new Row(
                              children: <Widget>[
                                new  IconButton(icon: const Icon(Icons.fiber_manual_record)),
                                new Column(
                                  children: <Widget>[
                                    new Text("Triángulo")
                                  ],
                                )
                              ]
                          )

                      ),
                    )

                  ],
                ),
              ),
        ],
            ),


    );

  }



  Widget onTapTriangle() {

  }

  Widget onTapRectangle() {

  }



}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body:
        new Column(
          children: <Widget>[
            new Text("Base"),
            new TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Ingresa la Base'
              ),
            ),
            new Text("Altura"),
            new TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Ingresa la Altura'
              ),
            ),

          ],


        )


    );
  }
}