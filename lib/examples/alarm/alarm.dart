import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';
import 'package:flutter/material.dart';

class Alarm extends StatefulWidget {
  const Alarm({super.key});

  @override
  State<Alarm> createState() => _AlarmState();
}

class _AlarmState extends State<Alarm> {
 TextEditingController _hourController = TextEditingController();
 TextEditingController _minuteController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.white12,
        title: Text('Alarm Clock'),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(11)),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(border:OutlineInputBorder(),focusColor: Colors.blueAccent),
                    style: TextStyle(color: Colors.blueAccent),
                    controller: _hourController,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
              SizedBox(width: 20,),

              Container(
                height: 40,
                width: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(11)),
                child: Center(
                  child: TextField(
                    controller: _minuteController,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),




            ],
            ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                int? hour = int.tryParse(_hourController.text);
                int? minute = int.tryParse(_minuteController.text);
                if (hour != null && minute != null) {
                  FlutterAlarmClock.createAlarm(hour: hour, minutes: minute);
                }
              }, child: Text('Create Alarm')),

              SizedBox(width: 20,),
              ElevatedButton(onPressed: (){
                FlutterAlarmClock.showAlarms();
              }, child: Text('Show Alarms')),
            ],
          ),

          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                int? minute = int.tryParse(_minuteController.text);
                if (minute != null) {
                  FlutterAlarmClock.createTimer(length: minute);
                }
              }, child: Text('Create Timer')),

              SizedBox(width: 20,),
              ElevatedButton(onPressed: (){
                FlutterAlarmClock.showTimers();
              }, child: Text('Show Timers')),
            ],
          )
          ],
        ),
      ),
    );
  }
}
