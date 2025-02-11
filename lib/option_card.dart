
import 'package:exercise_app/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OptionCard extends StatelessWidget {
  final String svgPic;
  final String title;
   OptionCard({
    super.key,required this.title,required this.svgPic
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(7),
     
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
       
        onTap: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context)=>DetailScreen(
              title:title ,
              discp:'Detailzzzz about ${title.split(' ')[0]} \nwill be available soon' ,
              assetImage: svgPic,
              ))
          );
        },
        child: Column(
          children: [
            Spacer(),
            SvgPicture.asset(svgPic),
            Spacer(),
            Text(title,textAlign: TextAlign.center,style: TextStyle(fontSize: 15),),
            Spacer()
          ],
        ),
      ),
    );
  }
}