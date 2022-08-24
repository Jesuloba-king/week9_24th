import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF151515),
      appBar: AppBar(
        backgroundColor: const Color(0XFF39373A),
        title: Text("Homepage",
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.white,),
              onPressed: () {Navigator.pop(context);},
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon (CupertinoIcons.search, color: Colors.white),
            onPressed: () { },
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/images/Group.png"),
                const SizedBox(height: 18,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Text("Explore",
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      // padding: EdgeInsets.only(left: 20),
                      height: 145,
                      width: 180,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/images/dellon.png",),
                          fit: BoxFit.contain,
                        ),
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    Container(
                      // padding: EdgeInsets.only(left: 20),
                      height: 145,
                      width: 180,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/images/luis.png",),
                          fit: BoxFit.contain,
                        ),
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 82),
                      child: Text("Sermon",
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),),
                    ),
                    const SizedBox(width: 140,),
                    Text("Events",
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 19),
                      child: Text("Hand Picked For You",
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 200,
                      width: 180,
                      child: Image.asset("assets/images/bible.png",),
                    // SizedBox(width: 20,),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 200,
                          width: 180,
                          // color: Colors.white,
                          child: Image.asset("assets/images/devotionals.png",),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 82),
                      child: Text("Bible",
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),),
                    ),
                    const SizedBox(width: 140,),
                    Text("Devotionals",
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}