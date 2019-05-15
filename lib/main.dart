import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Page Transition'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Fade Second Page'),
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade, child: SecondPage()));
              },
            ),
            RaisedButton(
              child: Text('Left To Right Slide Second Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeftWithFade,
                    child: SecondPage(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text('Size Slide Second Page'),
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        alignment: Alignment.bottomCenter,
                        curve: Curves.bounceOut,
                        type: PageTransitionType.size,
                        child: SecondPage()));
              },
            ),
            RaisedButton(
              child: Text('Rotate Slide Second Page'),
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        curve: Curves.bounceOut,
                        type: PageTransitionType.rotate,
                        alignment: Alignment.topCenter,
                        child: SecondPage()));
              },
            ),
            RaisedButton(
              child: Text('Scale Slide Second Page'),
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        curve: Curves.linear,
                        type: PageTransitionType.scale,
                        alignment: Alignment.topCenter,
                        child: SecondPage()));
              },
            ),
            RaisedButton(
              child: Text('Up to Down Second Page'),
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        curve: Curves.linear,
                        type: PageTransitionType.upToDown,
                        child: SecondPage()));
              },
            ),
            RaisedButton(
              child: Text('Down to Up Second Page'),
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        curve: Curves.linear,
                        type: PageTransitionType.downToUp,
                        child: SecondPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Transition SecondPage'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Left To Right Slide Second Page'),
          onPressed: () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.rightToLeftWithFade,
                child: SecondPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Transition Third'),
      ),
      body: Center(child: Text("Pagina 3")),
    );
  }
}
