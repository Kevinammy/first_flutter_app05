import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fluttter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        // this line of code changes the colour of our app
      ),
      home: const KevHomePage(),
    );
  }
}

class KevHomePage extends StatelessWidget {
  const KevHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text("KEV'S MASTERMIND"),
        actions: const [
          Icon(
            Icons.search_off_rounded,
            size: 35,
          ),
          Icon(
            Icons.more_vert_outlined,
            size: 40,
          )
        ],
      ),
      body: Center(
          child: ListTile(
        leading: const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("assets/images/photo.jpg"),
        ),
        title: const Text("Kevin"),
        subtitle: Row(
          children: const [
            Icon(Icons.done_all),
            SizedBox(
              width: 10,
            ),
            Text("Hello send me my food")
          ],
        ),
        trailing: Column(
          children: const [Text("5:30"), Icon(Icons.notifications)],
        ),
      )),
    );
  }
}
