// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LandingPage());
  }
}

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget navitem({required String title, required int index}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Color(0xff1d1e3c),
                  fontWeight: index == selectedIndex
                      ? FontWeight.w500
                      : FontWeight.w300),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index == selectedIndex
                    ? Color(0xfffe9980)
                    : Colors.transparent,
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(children: [
        Image.asset(
          'bg.png',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 100,
            vertical: 30,
          ),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Image.asset(
                  'logo.png',
                  width: 72,
                  height: 40,
                ),
                Row(children: [
                  navitem(
                    title: 'Guides',
                    index: 0,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  navitem(
                    title: 'Pricing',
                    index: 1,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  navitem(
                    title: 'Team',
                    index: 2,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  navitem(
                    title: 'Stories',
                    index: 3,
                  ),
                ]),
                Image.asset(
                  'btn.png',
                  width: 163,
                  height: 53,
                ),
              ]),

              // NOte: content
              SizedBox(
                height: 76,
              ),
              Image.asset(
                'illlst.png',
                width: 550,
              ),

              // NOTE: FOOTER
              SizedBox(
                height: 84,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'icon.png',
                    width: 24,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Text('Scroll to Learn More',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black,
                      ))
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
