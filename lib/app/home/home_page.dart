import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {

  late final logoAnimationController = AnimationController(
    vsync: this,
    duration: Duration(seconds: 5)
  );

  late final _logoAnimation = Tween(
    begin: 0.0,
    end: 1.0
  ).animate(logoAnimationController);

  @override
  void initState() {
    super.initState();
    logoAnimationController.forward();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff07004D),
                Color(0xff2D82B7)
              ]
            )
          ),
          child: Column(
            children: [
              Center(
                child: FadeTransition(
                  child: Image.asset('naoevirus.png'),
                  opacity: _logoAnimation,
                )
              )
            ]
          ),
        ),

      ),
    );

  }
}