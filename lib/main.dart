import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;

  void onClicked() {
    // ANCHOR - setState 함수를 호출하기만 해도 변경되기는 함
    // counter = counter + 1;
    // setState(() {});

    // NOTE - setState를 사용하지 않아도 변경할 수 있음
    // 하지만 그냥 안에다 넣어서 써라
    setState(() {
      // 상속 받은 State 클래스에게 상태가 변경되었다고 알림.
      // setState 함수를 사용하지 않으면 build 메서드는 다시 실행되지 않는다.
      counter = counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click Count',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                "$counter",
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              IconButton(
                iconSize: 40,
                onPressed: onClicked,
                icon: const Icon(
                  Icons.add_box_rounded,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
