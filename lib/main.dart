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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  final color = const Color.fromARGB(255, 150, 146, 140);
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: color,
        // TODO 0: Add some property here so screen color is set to constant we have defined.
        body: SafeArea(
          child: Column(
            // TODO 1: Add some property here so content gets vertically aligned.
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 100.0,
                backgroundImage: NetworkImage('https://static.wikia.nocookie.net/gatopedia/images/a/ac/Blanco_con_gris.jpg/revision/latest?cb=20230221224607&path-prefix=es'),
              ),
              // TODO 2: Add some widget here so we get some vertical separation between CircleAvatar and Text.
              SizedBox(height: 20.0),
              const Text(
                'Cotufa',
                style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                    // TODO 3: Add some properties here so text looks much nicer.
                    ),
              ),
              SizedBox(height: 20.0,),
              // TODO 4: Add some widget here so we get some vertical separation between these two Text widgets above and below.
              Text(
                'Increible Cotufa',
                style: TextStyle(
                  fontSize: 24.0,
                  color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.6),
                ),
              ),
              SizedBox(
                height: 40.0,
                width: 120.0,
                child: Divider(
                  color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.6),
                ),
              ),
              // TODO 5: At the bottom of this file there is an infoCard function that returns a Widget. Use it three times here to create three cards with different icons and texts.
              infoCard(icon: Icons.phone, text: '0963782584'),
              infoCard(icon: Icons.email, text: 'dannaloor@gmail.com'),
              infoCard(icon: Icons.location_on, text: 'Santa Martha'),
            ],
          ),
        ),
      ),
    );
  }

  // We are going to use this widget many times, so it makes sense to extract it to
  // avoid code repetition. In fact, even if we are only going to use it once, it may
  // be a good idea to extract widgets into their own functions or classes.

  // TODO 6: Why do we use these curly brackets {} inside parantheses ()? What do they do to parameters? Please answer this question in this very comment.
  Widget infoCard({required IconData icon, required String text}) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Icon(
            icon,
            size: 30.0,
            color: color,
          ),
          title: Text(
            text,
            style: TextStyle(
              fontSize: 18.0,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
