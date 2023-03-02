import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State createState() => HomeState();
}

class HomeState extends State {
  int contador = 0;

  void click() {
    setState(() {
      contador++;
    });
  }

  @override
  build(context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text(
          "App contador",
          style: TextStyle(

            color: Colors.yellow,
            fontWeight: FontWeight.bold
          ),
        
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "O contador foi atualizado para $contador",
              style: const TextStyle(
                  color: Colors.yellow,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      floatingActionButton: 
      FloatingActionButton(
        onPressed: click,
        backgroundColor: Colors.yellow,
        child: const Icon(Icons.add), 
      ),
    );
  }
}
