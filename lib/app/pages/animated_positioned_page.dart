import 'package:flutter/material.dart';

class AnimatedPositionedPage extends StatefulWidget {
  const AnimatedPositionedPage({super.key});

  @override
  State<AnimatedPositionedPage> createState() => _AnimatedPositionedPageState();
}

class _AnimatedPositionedPageState extends State<AnimatedPositionedPage> {
  bool _isMoved = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Center(child: Text('AnimatedPositioned')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SizedBox(
              height: 400,
              child: Stack(
                children: [
                  AnimatedPositioned(
                    left: _isMoved ? 300.0 : 30.0,
                    top: 170.0,
                    duration: const Duration(seconds: 2),
                    curve: Curves.easeInOut,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.amber,
                      child: const Center(
                        child: Text(
                          'Move me',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                    left: _isMoved ? 300.0 : 30.0,
                    top: _isMoved ? 300.0 : 30.0,
                    duration: const Duration(seconds: 2),
                    curve: Curves.bounceInOut,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      child: const Center(
                        child: Text(
                          'Move me',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _isMoved = !_isMoved;
              });
            },
            child: const Text('Move'),
          ),
        ],
      ),
    );
  }
}
