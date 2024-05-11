import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xff78bfe0),
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: "Imagen 1",
                  ),
                  Tab(text: "Imagen 2"),
                ],
              ),
              title: Text('ACT7 Celulares'),
            ),
            body: TabBarView(
              children: [
                Image.asset(
                  "assets/images/iPhone_15.png",
                  width: 400,
                  height: 300,
                  fit: BoxFit.contain,
                  frameBuilder: (context, child, frame, loaded) {
                    if (loaded) {
                      return child;
                    }
                    return AnimatedOpacity(
                      opacity: frame == null ? 0 : 1,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeOut,
                      child: child,
                    );
                  },
                  errorBuilder: (context, exception, stackTrace) {
                    return const Center(
                      child: Text("Chale no sirve, No se puedo"),
                    );
                  },
                ),
                Image.asset(
                  "assets/images/Apple_iPhone_13_Pro_color_lineup_2022.jpg",
                  width: 400,
                  height: 300,
                  fit: BoxFit.contain,
                  frameBuilder: (context, child, frame, loaded) {
                    if (loaded) {
                      return child;
                    }
                    return AnimatedOpacity(
                      opacity: frame == null ? 0 : 1,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeOut,
                      child: child,
                    );
                  },
                  errorBuilder: (context, exception, stackTrace) {
                    return const Center(
                      child: Text("Chale no sirve"),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'Hello, World!',
        ),
      ),
    );
  }
}
