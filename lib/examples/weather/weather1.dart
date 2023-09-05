import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project1/examples/weather/weather2.dart';
import 'package:flutter_project1/examples/weather/weather3.dart';
import 'package:flutter_project1/examples/weather/weather_api.dart';

import 'colorfont.dart';

class Wether extends StatefulWidget {
  const Wether({super.key});

  @override
  State<Wether> createState() => _WetherState();
}

class _WetherState extends State<Wether> {

  WeatherApiClient weatherapi = WeatherApiClient();
  WeatherModel? data;

  Future<void> getData(String? location) async {
    data = await weatherapi.getCurrentWeather(location);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        decoration: BoxDecoration(
         color: Colors.black
        ),
        width: w,
        height: h,
        child: Container(margin: EdgeInsets.all(10), child: loadedData(),),
      ),
    ),
    );
  }

  FutureBuilder<void> loadedData() {
    return FutureBuilder(
      future: getData("New York"),
      builder: (ctx, snp) {
        if (snp.connectionState == ConnectionState.done) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              currentWeather(
                  onPressed: () {
                    setState(() {
                      loadedData();
                    });
                  },
                  temp:"${data!.temp}",
                  location: "${data!.cityName}",
                  status: "${data!.status}",
                  country: "${data!.country}"
              ),
              moreInfo(
                  wind: "${data!.wind}",
                  humidity: "${data!.humidity}",
                  feelsLike: "${data!.feelsLike}"
              ),
            ],
          );
        } else if (snp.connectionState == ConnectionState.waiting) {
          return Center(
            child: CupertinoActivityIndicator(
              radius: 20,
              color: Colors.white,
            ),
          );
        }
        return Container();
      },
    );
  }
}

class WeatherModel {
  String? cityName;
  double? temp;
  double? wind;
  int? humidity;
  double? feelsLike;
  String? status;
  String? country;

  WeatherModel({
    required this.cityName,
    required this.temp,
    required this.wind,
    required this.humidity,
    required this.feelsLike,
    required this.status,
    required this.country,
  });
WeatherModel.fromJson(Map<String, dynamic> json){
  cityName=json["name"]as String?;
  temp=json["main"]["temp"]as double?;
  wind=json["wind"]["speed"]as double?;
  humidity=json["main"]["humidity"]as int?;
  feelsLike=json["main"]["feels_like"]as double?;
  status=json["sys"]["country"]as String?;
}
}