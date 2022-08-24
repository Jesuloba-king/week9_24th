import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboard/onboard.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  int _jump = 0;
  lastCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
    });
  }

  _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setInt("counter", _jump);
    });
  }
  @override
  void initState(){
    // TODO: implement initState
    super.initState();
    lastCounter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color(0XFFF5BD4B),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:  [
              Container(
                padding: const EdgeInsets.only(top: 71, left: 324),
                child: Column(
                  children: [
                    Text('skip',
                      style: GoogleFonts.openSans(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 190),
                    child: Image.asset("assets/images/noto.png",
                      height: 128, width: 128,),
                  ),
                  const SizedBox(height: 10,),

                  SizedBox(height: 66, width: 200,
                  child: Text("Celebrate your Loved ones",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700
                    ),),),
                  const SizedBox(height: 20,),
                  SizedBox(
                    height: 44,
                      width: 265,
                    child: Text("Swipe right to celebrate with people and in your area.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                      ),),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 168),
                    child: CupertinoButton(
                      color: CupertinoColors.white,
                        child: Text("Next",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w700
                      ),),
                        onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return const OnboardPage(title: "Onboard");
                        }));
                        }),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

