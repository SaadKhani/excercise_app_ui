import 'package:exercise_app/option_card.dart';
import 'package:exercise_app/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homepage(),
    );
  }
}
class homepage extends StatelessWidget {

  
  homepage ({super.key});

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
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
      backgroundColor: Colors.blueGrey.shade300,
      body: Stack(
        children: [
            Container(
              height: size.height*0.45,
              decoration: BoxDecoration(
                color: Color(0xFFF5CEB8),
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage('assets/images/undraw_pilates_gpdb.png')),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFF2BEA1),
                        ),
                        child: SvgPicture.asset('assets/icons/menu.svg'),
                      ),
                    ),
                    Text('Good Morning! \nName',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                    SizedBox(height: 5,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: SvgPicture.asset('assets/icons/search.svg'),
                          hintText: 'search'
                        ),
                      ),
                    ), 
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        children: [
                          
                            OptionCard(svgPic: 'assets/icons/Hamburger.svg',title: "Diet Recommendation",),
                            
                            OptionCard(svgPic:'assets/icons/Excrecises.svg' ,title: 'Kegel exercises',),
                            
                            OptionCard(svgPic: 'assets/icons/Meditation.svg',title: 'Meditation',),
                            
                            OptionCard(svgPic: 'assets/icons/yoga.svg',title: 'Yoga',),
                        ],
                        ),
                    )
                  ],
                ),
              ),
            ),
           
          
        ],
      ),
    );
  }
}
