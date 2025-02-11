
import 'package:exercise_app/second_screen.dart';
import 'package:flutter/material.dart';

class sessionCard extends StatelessWidget {
  int a;
  sessionCard({super.key, required this.size, required this.a});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: size.height * 0.09,
        width: size.width * 0.4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            border: Border.all(color: Colors.white)),
        child: InkWell(
          onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>secSreen())
                );
              },
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                  height: size.height * 0.05,
                  width: size.height * 0.05,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue[900],
                  ),
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  )),
              SizedBox(
                width: 10,
              ),
              Text('season $a')
            ],
          ),
        ),
      ),
    );
  }
}
