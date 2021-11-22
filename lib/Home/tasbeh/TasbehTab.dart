import 'package:flutter/material.dart';
import 'dart:math'as math;
import '../../main.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int counter=0;

  List<String>tasbehlist=['سبحان الله','الحمد لله','الله اكبر'," لاحول ولاقوه الا بالله"];

  int currentindex=0;

  double angle=0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                InkWell(
                  onTap: ontasbeh_click,
                  child: Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
                    child: Transform.rotate(
                        angle:math.pi/180* angle,
                        child: Image.asset('assets/images/body of seb7a.png')),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.05),
                  child: Image.asset('assets/images/head of seb7a.png'),
                ),
              ],
            ),
            Expanded(child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text("عدد التسبيحات",style: TextStyle(fontSize: 25,
                      fontWeight:FontWeight.w600,),
                    )),
                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: MyThemeData.primaryColor,
                    borderRadius: BorderRadius.circular(15),


                  ),
                  child: Text('$counter',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 80,
                  width: 200,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: MyThemeData.primaryColor,
                    borderRadius: BorderRadius.circular(20),


                  ),
                  child: Text(tasbehlist[currentindex],style: TextStyle(fontSize: 30,
                      fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,),
                )
              ],
            )),

          ],
        ),
      ),
    );
  }

  void ontasbeh_click(){
    setState(() {
      angle+=30;
      counter++;
      if(counter%33==0){
        if(currentindex==4){
          currentindex=0;
        }
        currentindex++;
      }

    });

  }
}
