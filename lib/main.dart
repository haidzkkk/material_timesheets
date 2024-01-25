import 'package:flutter/material.dart';
import 'package:material_timesheets/screen/premium/premium_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    debugShowCheckedModeBanner: false,
    home: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: (){
                  startScreen(context, const PremiumScreen());
                }, 
                child: const Text("Premium screen")
                ),
            ],
          ),
        ),
      ),
    );
  }

  void startScreen(BuildContext context, Widget screen){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => 
    const PremiumScreen()));
  }
}
