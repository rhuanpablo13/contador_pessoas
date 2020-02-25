import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'Contador de Pessoas',
  home: Home()
));



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _qtdPeople = 0;
  String _podeEntrar = "Pode entrar";


  void _changePeople(int qtd) {
    setState(() {
      _qtdPeople += qtd;

      if (_qtdPeople < 0) {
        _podeEntrar = "Mundo invertido ?";
      } else if (_qtdPeople > 0 && _qtdPeople <= 10) {
        _podeEntrar = "Pode entrar";
      } else {
        _podeEntrar = "Lotado!";
      }
    });    
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/RestaurantEugene01_courtesy.jpg",
          fit: BoxFit.cover,
          height: 1000,
        ),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Pessoas: $_qtdPeople",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow( // bottomLeft
                        offset: Offset(-1.5, -1.5),
                        color: Colors.white
                    ),
                    Shadow( // bottomRight
                        offset: Offset(1.5, -1.5),
                        color: Colors.white
                    ),
                    Shadow( // topRight
                        offset: Offset(1.5, 1.5),
                        color: Colors.white
                    ),
                    Shadow( // topLeft
                        offset: Offset(-1.5, 1.5),
                        color: Colors.white
                    ),
                  ]
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Padding(
                  padding: EdgeInsets.all(10.0),
                  child:FlatButton(
                    child: Text(
                        "+1",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 30,
                            shadows: [
                              Shadow( // bottomLeft
                                  offset: Offset(-1.5, -1.5),
                                  color: Colors.black
                              ),
                              Shadow( // bottomRight
                                  offset: Offset(1.5, -1.5),
                                  color: Colors.black
                              ),
                              Shadow( // topRight
                                  offset: Offset(1.5, 1.5),
                                  color: Colors.black
                              ),
                              Shadow( // topLeft
                                  offset: Offset(-1.5, 1.5),
                                  color: Colors.black
                              ),
                            ]
                        )
                    ),
                    onPressed: () {
                      _changePeople(1);
                    },
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(10.0),
                  child:FlatButton(
                    child: Text(
                        "-1",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 30,
                            shadows: [
                              Shadow( // bottomLeft
                                  offset: Offset(-1.5, -1.5),
                                  color: Colors.black
                              ),
                              Shadow( // bottomRight
                                  offset: Offset(1.5, -1.5),
                                  color: Colors.black
                              ),
                              Shadow( // topRight
                                  offset: Offset(1.5, 1.5),
                                  color: Colors.black
                              ),
                              Shadow( // topLeft
                                  offset: Offset(-1.5, 1.5),
                                  color: Colors.black
                              ),
                            ]
                        )
                    ),
                    onPressed: () {
                      _changePeople(-1);
                    },
                  ),
                ),

              ],
            ),

            Text(_podeEntrar,
                style: TextStyle(color: Colors.red, fontStyle: FontStyle.italic, fontSize: 20)
            )

          ],
        )

      ],
    );
  }
}
