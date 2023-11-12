import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 1;
  var name =["김영숙",  '홍길동', '피자집'];
  var like = [0,0,0];

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('연락처앱'),),
        body: ListView.builder(
            itemCount: 3,
            itemBuilder: (c, i){
              return ListTile(
                subtitle: Text(like[i].toString()),
                leading: Image.asset('profile.png'),
                title: Text(name[i]),
                trailing: ElevatedButton(
                  child: Text("좋아요"),
                  onPressed: (){
                    setState(() {
                      like[i]++;
                    });
                  },
                ),

              );
          },
        )

      )
    );
  }
}
