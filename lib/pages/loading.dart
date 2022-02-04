import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';




class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}



class _LoadingState extends State<Loading> {

  String time = "loading";

void setupWorldTime() async{
   Worldtime inst = Worldtime(url: "Africa/Nairobi", flag: "Nairobi.png", location: "Nairobi", time: '', isDayTime: false);
   await inst.getData();
   Navigator.pushReplacementNamed(context, "/home",arguments: {
     "location" : inst.location,
     "flag": inst.flag,
     "time": inst.time,
     "isdaytime": inst.isDayTime
   });
   // setState(() {
   //   time = (inst.time);
   // });

}

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[900],
      appBar: AppBar(


      ),
      body: Center(child:
      SpinKitCubeGrid(
        color: Colors.white,
        size: 80.0,
      ),)
    );
  }
}
