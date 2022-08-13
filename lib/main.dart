import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('textfield decoration'),
        ),
        body: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 50, left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.lightBlue[50],
                    filled: true,
                    suffix: Container(
                      width: 5,
                      height: 5,
                      color: Colors.red,
                    ),
                    icon: Icon(Icons.adb),
                    prefixIcon: Icon(Icons.person),
                    prefixText: 'input nama : ',
                    prefixStyle: TextStyle(
                        color: Colors.lightBlue, fontWeight: FontWeight.w600),
                    labelText: 'nama lengkap',
                    hintText: 'nama lengkap lho...',
                    hintStyle: TextStyle(fontSize: 12),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onChanged: (value) {
                    setState(() {});
                  },
                ))
          ],
        ),
      ),
    );
  }
}
