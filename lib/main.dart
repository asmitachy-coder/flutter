import 'package:flutter/material.dart';

void main() {
  runApp(Bit());
}

class Bit extends StatelessWidget {
  const Bit({super.key});

  @override
  Widget build(BuildContext context) {
    //material app is not root app
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //reference
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text(
          'Discover',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBDbR5uMAeqEu2SqYFM4SG1yaqaAn8kPeVJA&s",
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                spacing: 10,
                children: [
                  Text('Popular'),
                  //for Spacing one is   ##sizebox and another is spacing provided in row widget
                  Text('Featured'),
                  // SizedBox(width: 10),
                  Text('Most Visited'),
                  Text('Europe'),
                  Text('Asia'),
                  Text('Popular'),
                ],
              ),

              //Container, Column /Row, Basic UI Widgets: Text, Image, Icon, SizedBox, Padding, Button (Elevated,Text, Outline)
              Column(
                spacing: 10,
                children: [
                  Container(height: 100, width: 100, color: Colors.red),
                  // SizedBox(height: 10),
                  Container(height: 100, width: 100, color: Colors.green),
                  // SizedBox(height: 100),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.yellow,
                    ),
                  ),

                  Image.asset("assets/logo.jpg.jpg", height: 200, width: 200),
                ],
              ),

              //for text
              Text("fsf"),
              Icon(Icons.add),
              ElevatedButton(onPressed: () {}, child: Text("Login")),
              OutlinedButton(onPressed: () {}, child: Text("Outline")),
              TextButton(onPressed: () {}, child: Text("Text Button")),
            ],
          ),
        ),
      ),
    );
  }
}
