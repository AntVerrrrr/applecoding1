import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Row(
            children: [
              Image.asset('camera.jpg', width: 150,),
              Container(
                width: 300,
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('카메라 팝니다.'),
                    Text('금호동 3가'),
                    Text('7000원'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.favorite),
                        Text('4')
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}

