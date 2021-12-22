import 'package:animated_switcher/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pos = 0;

  @override
  Widget build(BuildContext context) {
    //List<Widget> vWidgs = [uno(), dos(), tres()];
    //List<Widget> vWidgs = [Square(Colors.red), Square(Colors.yellow), Square(Colors.green)];
    List<Widget> vWidgs = [Square1(), Square2(), Square3(), Square4(), Square5()];
    var screen = MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body:Center(
          child: AnimatedSwitcher(
              duration: Duration(milliseconds: 1000),
              child: vWidgs[pos],

              switchInCurve: Curves.bounceInOut,
              switchOutCurve: Curves.decelerate,

              // esto hace efecto con widgets construidos desde clases
              // por ahora hay que agregarle algo que indique que hay cambio
              transitionBuilder: (Widget child, Animation<double> animation){
                return ScaleTransition(scale: animation, child: child);
              },

              // List<int> list = [1, 2, 3]
              // List<int> result = [...list, 3]
              // print(result) -> [1, 2, 3, 4]
            layoutBuilder: (Widget currentChild, List<Widget> previousChildren) {
                return Column(
                  children: [...previousChildren,
                    if(currentChild != null) currentChild,
                  ],
                );
              },
          ),
        ) ,
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              setState(() {
                pos = (pos + 1) % 3;
              });
            }
        ),
      ),
    );
  }

  Widget uno(){
    return Container(
      width: 200,
      height: 200,
      color: Colors.pink,

      // muy utilizado
      key: UniqueKey(),
    );
  }

  Widget dos(){
    return Container(
      width: 200,
      height: 200,
      color: Colors.lightGreen,

      key: UniqueKey(),
    );
  }

  Widget tres(){
    return Container(
      width: 200,
      height: 200,
      color: Colors.lightBlue,

      key: UniqueKey(),
    );
  }

}