import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final VoidCallback onInitializationComplete;
  const SplashScreen({Key? key, required this.onInitializationComplete})
      : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2))
        .then((value) => widget.onInitializationComplete());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flickd',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                  fit: BoxFit.contain)),
        ),
      ),
    );
  }
}
