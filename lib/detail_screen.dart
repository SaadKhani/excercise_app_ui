import 'package:exercise_app/second_screen.dart';
import 'package:exercise_app/session_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatelessWidget {
  String title;
  String discp;
  String assetImage;
  DetailScreen(
      {super.key,
      required this.title,
      required this.discp,
      required this.assetImage});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade300,
          bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        onTap: (value) {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>secSreen()));
        },
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/calendar.svg'),label:'Today' ),
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/gym.svg'),label: 'All exercise'),
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/Settings.svg'),label:'Settings' ),
        ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: size.height * 0.45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color:Color(0xFFF5CEB8),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SafeArea(
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  spacing: 10,
                                  children: [
                                    Text(
                                      title,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '3-5 hours Course',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(discp),
                                    Container(
                                      width: size.width * 0.5,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 2),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: TextField(
                                        scrollPadding: EdgeInsets.all(10),
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            icon: SvgPicture.asset(
                                                'assets/icons/search.svg'),
                                            hintText: 'search'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(child: SvgPicture.asset(assetImage)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.35,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Wrap(
                        children: [
                          sessionCard(
                            size: size,
                            a: 1,
                          ),
                          sessionCard(
                            size: size,
                            a: 2,
                          ),
                          sessionCard(
                            size: size,
                            a: 3,
                          ),
                          sessionCard(
                            size: size,
                            a: 4,
                          ),
                          sessionCard(
                            size: size,
                            a: 5,
                          ),
                          sessionCard(
                            size: size,
                            a: 6,
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(height: 10,),
                                Container(
                                  height: size.height*0.1,width: size.width*0.9,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(12)),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Text('Module 2',style: TextStyle(fontWeight: FontWeight.bold),),
                                      SizedBox(height: 5,),
                                      Text('Advance level')
                                    ],
                                  ),
                                )
                              ],
                            ),
                            ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
