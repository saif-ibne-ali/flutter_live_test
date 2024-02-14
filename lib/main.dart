import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_live_test/weather_info_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  List<WeatherInfoModel> weatherData = [];

  @override
  void initState() {
    super.initState();
    loadWeatherData();
  }

  Future<void> loadWeatherData() async {
    // Load JSON file from assets
    String jsonString = await rootBundle.loadString('assets/weather_data.json');
    // Decode JSON
    List<dynamic> jsonList = json.decode(jsonString);
    // Parse JSON into Weather objects
    List<WeatherInfoModel> data =
        jsonList.map((json) => WeatherInfoModel.fromJson(json)).toList();
    setState(() {
      weatherData = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Weather Info App'),
        ),
        body: ListView.builder(
          itemCount: weatherData.length,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'City: ${weatherData[index].city}',
                      style: const TextStyle(fontSize: 20),
                    ),
                    Text('Temperature: ${weatherData[index].temperature}°C'),
                    Text('Condition: ${weatherData[index].condition}'),
                    Text('Humidity: ${weatherData[index].humidity}%'),
                    Text('Wind Speed: ${weatherData[index].windSpeed} m/s'),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
