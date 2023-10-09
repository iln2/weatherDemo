import 'package:http/http.dart' as http;
import 'package:weather_demo/screens/location_screen.dart';
import 'package:weather_demo/services/weather.dart';
import 'package:flutter/material.dart';
import 'package:weather_demo/services/location.dart';
import 'package:weather_demo/services/networking.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_demo/services/weather.dart';
import 'dart:convert';

const apiKey = '730fd62018485b46f549fff09709dc96';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    WeatherModel weatherModel = WeatherModel();
    var weatherData = await weatherModel.getLocationWeather();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return LocationScreen(
            locationWeather: weatherData,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}

/*LocationPermission permission;
    permission = await Geolocator.checkPermission();
    permission = await Geolocator.requestPermission();
    if( permission== LocationPermission.denied){
      print('No access');*/

/*await Geolocator.openAppSettings();
    await Geolocator.openLocationSettings();*/

/* backgroundColor: Colors.indigo.shade400,
      body: Center(
        child: ElevatedButton(
        style: ElevatedButton.styleFrom(
        backgroundColor: Colors.indigo.shade100),
          onPressed: () {
            //getLocation();
          },
          child: Text('Get Location',style: TextStyle(fontSize: 25.0 , color: Colors.indigo.shade300)),
        ),
      ),*/

//http.Response response = await http.get('https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=b6907d289e10d714a6e88b30761fae22' as Uri);
//http.Response response = await http.get('https://openweathermap.org/city/250441' as Uri);

/*var longitude = jsonDecode(data)['coord']['lon'];
      print(longitude);

      var weatherDescription = jsonDecode(data)['weather'][0]['description'];
      print(weatherDescription);*/
