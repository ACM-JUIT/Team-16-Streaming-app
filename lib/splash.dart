import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF2E1), 
      body: Center(
        child: SizedBox(
          width: 200,
          height: 200, 
          child: Lottie.asset(
            'assets/animations/Animation - 1722022722505.json',
            controller: _controller,
            onLoaded: (composition) {
              
              _controller
                ..duration = composition.duration
                ..forward();
            },
          ),
        ),
      ),
    );
  }
}
