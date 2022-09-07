import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:web_call/views/webview.dart';

class SplashScrren extends StatefulWidget {
  SplashScrren({Key? key}) : super(key: key);

  @override
  State<SplashScrren> createState() => _SplashScrrenState();
}

class _SplashScrrenState extends State<SplashScrren> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 8),
    (){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>WebHome()));
    }
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation:0.0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.light
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/bms.png",scale: 1.2,),
            SizedBox(height: 25,),
            Lottie.asset("assets/images/loading.json",height: 85)
          ],
        ),
      )
      
    );
  }
}