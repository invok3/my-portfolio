import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _selected = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: Container(
                color: Colors.red,
              ),
              flex: 3,
            ),
            indexor(),
            Flexible(
              child: Center(
                child: TextButton(
                  onPressed: () {
                    int y = _selected;
                    y++;
                    if (y == 3) {
                      y = 0;
                    }
                    setState(() {
                      _selected = y;
                    });
                  },
                  child: Container(
                    color: Colors.amber,
                  ),
                ),
              ),
              flex: 2,
            )
          ],
        ),
      ),
    );
  }

  Flexible indexor() {
    return Flexible(
            child: Center(
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          if(_selected==0){return;}
                          setState(() {
                            _selected--;
                          });
                        },
                        child: Text("<")),
                    Spacer(),
                    buildAnimatedContainer(0),
                    SizedBox(width: 6),
                    buildAnimatedContainer(1),
                    SizedBox(width: 6),
                    buildAnimatedContainer(2),
                    Spacer(),
                    TextButton(
                        onPressed: () {
                          if(_selected==2){return;}
                          setState(() {
                            _selected++;
                          });
                        },
                        child: Text(">")),
                  ],
                ),
              ),
            ),
            flex: 1,
          );
  }

  AnimatedContainer buildAnimatedContainer(x) => AnimatedContainer(
        width: _selected == x ? 36 : 12,
        height: 12,
        decoration: _selected == x ? selected() : normal(),
        duration: Duration(milliseconds: 234),
      );

  BoxDecoration selected() => BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.amber.withOpacity(1));

  BoxDecoration normal() => BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.grey);
}
