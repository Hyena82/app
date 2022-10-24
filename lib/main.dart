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
  String name = '';
  final myControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter'),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.pink,
          height: 300,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 0),
                  child: ElevatedButton(
                    onPressed: () {
                      debugPrint("My heart will go on ${double.infinity}");
                    },
                    child: const Text("hihi"),
                  ),
                ),
                Text(name),
                TextField(
                  controller: myControler,
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                  decoration: const InputDecoration(labelText: "Your name"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
