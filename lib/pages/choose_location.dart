import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<Worldtime> locations = [
    Worldtime(url: 'Europe/London', location: 'London', flag: 'uk.png', time: '', isDayTime: false),
    Worldtime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png', time: '', isDayTime: false),
    Worldtime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png',time: '', isDayTime: false),
    Worldtime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png',time: '', isDayTime: false),
    Worldtime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png',time: '', isDayTime: false),
    Worldtime(url: 'America/New_York', location: 'New York', flag: 'usa.png',time: '', isDayTime: false),
    Worldtime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png',time: '', isDayTime: false),
    Worldtime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png',time: '', isDayTime: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {},
                  title: Text(locations[index].location),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/${locations[index].flag}'),
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}