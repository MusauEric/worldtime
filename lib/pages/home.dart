import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    String? isDayTime = data ["isdaytime"] ? "day.jpg" : "night.jpg";
    Color colors =  data["isdaytime"] ? Colors.blue : Colors.black;
    print(data);

    return Scaffold(
      backgroundColor:colors,
        body: SafeArea(
      child: Container(
       decoration: BoxDecoration(
         image: DecorationImage(
           image: AssetImage(
             "assets/$isDayTime",

           ),
           fit: BoxFit.cover,

         )
       ),

        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: Column(
            children: <Widget>[
              FlatButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, "/location");
                  },
                  icon: Icon(
                      Icons.edit_location,
                      color: Colors.grey[300],
                  ),
                  label: Text(
                      "Edit location",
                    style: TextStyle(
                      color: Colors.grey[300]
                    ),
                  )),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data["location"],
                    style: TextStyle(fontSize: 28.0,
                        letterSpacing: 2.0,
                      color: Colors.white
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.0,),

              Text(data["time"],
              style: TextStyle(
                color: Colors.white,
                fontSize: 66.0
              ),)
            ],
          ),
        ),
      ),
    ));
  }
}
