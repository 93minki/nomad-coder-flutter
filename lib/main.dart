import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle ? const MyLargeTitle() : const Text('Nothing'),
              IconButton(
                onPressed: toggleTitle,
                icon: const Icon(
                  Icons.remove_red_eye,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  // 여기서 App 클래스에서 정의한 theme에 접근해야 한다.
  // BuildContext에 대해 얘기하기 전에 Flutter의 렌더링 방식을 알아야 함
  const MyLargeTitle({
    Key? key,
  }) : super(key: key);

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  @override
  void initState() {
    // TODO: implement initState
    // 상태 초기화 꼭 안써도 된다. 그냥 위에서 int counter = 0;으로 해도 됨
    // 대부분의 상황에서 이 메서드를 쓸 필요는 없다.
    // 하지만 종종 부모 요소에 의존하는 데이터를 초기화해야 하는 경우가 있다.
    // 가끔 데이터를 초기화하기 위해 context를 사용하게 된다.
    // API 호출하거나 할때 사용된다고 함 중요한 점은 build 메서드 보다 먼저 사용되어야 함.
    // initState 메서드는 오직 단 한번만 호출된다.
    super.initState(); // 이것도 반드시 써줘야 함.
    print('initState!');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    // 위젯이 스크린에서 제거될 때 호출되는 메서드
    // 사라지고 있을 때 호출된다고 함
    // API 업데이트나 이벤트 리스너로부터 구독을 취소하거나 할 떄 사용될 수 있다.
    // 위젯이 위젯 트리에서 제거되기 전에 무언가를 취소하고 싶을 때 사용한다
    super.dispose();
    print('dispose!');
  }

  @override
  Widget build(BuildContext context) {
    // NOTE - context는 지금 위젯 이전에 있는 모든 상위 요소들에 대한 정보

    print('build!');
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
        backgroundColor: Theme.of(context).backgroundColor,
      ),
    );
  }
}
