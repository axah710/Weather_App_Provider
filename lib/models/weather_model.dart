import 'package:flutter/material.dart';

class WeatherModel {
  DateTime time;
  double temp;
  double maxTemp;
  double minTemp;
  String condation;
  WeatherModel({
    required this.time,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.condation,
  });
  factory WeatherModel.fromJson(dynamic data) {
    var jsonData = data["forecast"]["forecastday"][0]["day"];
    return WeatherModel(
        time: DateTime.parse(data['current']['last_updated']),
        temp: jsonData["avgtemp_c"],
        maxTemp: jsonData["maxtemp_c"],
        minTemp: jsonData["mintemp_c"],
        condation: jsonData['condition']['text']);
  }
  @override
  String toString() {
    return "time=$time, temp=$temp, maxTemp=$maxTemp, condation=$condation";
  }

  String getImage() {
    if (condation == 'Sunny' ||
        condation == 'Clear' ||
        condation == 'Sunshowers' ||
        condation == 'Rainbow' ||
        condation == 'Halos (Optical Phenomenon)' ||
        condation == 'Sun Dogs') {
      return 'assets/images/clear.png';
    } else if (condation == 'Blizzard' ||
        condation == 'Frost' ||
        condation == 'Hoarfrost' ||
        condation == 'Frost Quakes' ||
        condation == 'Snow Rollers' ||
        condation == 'Patchy snow possible' ||
        condation == 'Patchy sleet possible' ||
        condation == 'Patchy freezing drizzle possible' ||
        condation == 'Blowing snow' ||
        condation == 'Snowfall' ||
        condation == 'Ice Storms' ||
        condation == 'Snow Rollers' ||
        condation == 'Diamond Dust' ||
        condation == 'Graupel') {
      return 'assets/images/snow.png';
    } else if (condation == 'Freezing fog' ||
        condation == 'partly cloudy' ||
        condation == 'Fog' ||
        condation == 'Heavy Cloud' ||
        condation == 'Mist' ||
        condation == 'Freezing fog' ||
        condation == 'Fog' ||
        condation == 'Heavy Cloud' ||
        condation == 'Mist' ||
        condation == 'Haze' ||
        condation == 'Frost' ||
        condation == 'Gales' ||
        condation == 'Nor\'easters' ||
        condation == 'Super Typhoons' ||
        condation == 'Steam Devils' ||
        condation == 'St. Elmo\'s Fire' ||
        condation == 'Steam Devils' ||
        condation == 'Williwaw' ||
        condation == 'Kona Storm') {
      return 'assets/images/cloudy.png';
    } else if (condation == 'Patchy rain possible' ||
        condation == 'Heavy Rain' ||
        condation == 'Showers	' ||
        condation == 'Sleet' ||
        condation == 'Freezing Rain' ||
        condation == 'Drizzle' ||
        condation == 'Ice Storms' ||
        condation == 'Polar Vortex' ||
        condation == 'Droughts' ||
        condation == 'Avalanches' ||
        condation == 'Tsunamis' ||
        condation == 'Waterspouts' ||
        condation == 'Heat Bursts') {
      return 'assets/images/rainy.png';
    } else if (condation == 'Thundery outbreaks possible' ||
        condation == 'Moderate or heavy snow with thunder' ||
        condation == 'Patchy light snow with thunder' ||
        condation == 'Moderate or heavy rain with thunder' ||
        condation == 'Patchy light rain with thunder') {
      return 'assets/images/thunderstorm.png';
    } else {
      return 'assets/images/clear.png';
    }
  }

  MaterialColor getThemeColor() {
    if (condation == 'Sunny' ||
        condation == 'Clear' ||
        condation == 'Sunshowers' ||
        condation == 'Rainbow' ||
        condation == 'Halos (Optical Phenomenon)' ||
        condation == 'Sun Dogs') {
      return Colors.yellow;
    } else if (condation == 'Blizzard' ||
        condation == 'Frost' ||
        condation == 'Hoarfrost' ||
        condation == 'Frost Quakes' ||
        condation == 'Snow Rollers' ||
        condation == 'Patchy snow possible' ||
        condation == 'Patchy sleet possible' ||
        condation == 'Patchy freezing drizzle possible' ||
        condation == 'Blowing snow' ||
        condation == 'Snowfall' ||
        condation == 'Ice Storms' ||
        condation == 'Snow Rollers' ||
        condation == 'Diamond Dust' ||
        condation == 'Graupel') {
      return Colors.lightBlue;
    } else if (condation == 'Freezing fog' ||
        condation == 'Fog' ||
        condation == 'Heavy Cloud' ||
        condation == 'partly cloudy' ||
        condation == 'Mist' ||
        condation == 'Freezing fog' ||
        condation == 'Fog' ||
        condation == 'Heavy Cloud' ||
        condation == 'Mist' ||
        condation == 'Haze' ||
        condation == 'Frost' ||
        condation == 'Gales' ||
        condation == 'Nor\'easters' ||
        condation == 'Super Typhoons' ||
        condation == 'Steam Devils' ||
        condation == 'St. Elmo\'s Fire' ||
        condation == 'Steam Devils' ||
        condation == 'Williwaw' ||
        condation == 'Kona Storm') {
      return Colors.grey;
    } else if (condation == 'Patchy rain possible' ||
        condation == 'Heavy Rain' ||
        condation == 'Showers	' ||
        condation == 'Sleet' ||
        condation == 'Freezing Rain' ||
        condation == 'Drizzle' ||
        condation == 'Ice Storms' ||
        condation == 'Polar Vortex' ||
        condation == 'Droughts' ||
        condation == 'Avalanches' ||
        condation == 'Tsunamis' ||
        condation == 'Waterspouts' ||
        condation == 'Heat Bursts') {
      return Colors.lightGreen;
    } else if (condation == 'Thundery outbreaks possible' ||
        condation == 'Moderate or heavy snow with thunder' ||
        condation == 'Patchy light snow with thunder' ||
        condation == 'Moderate or heavy rain with thunder' ||
        condation == 'Patchy light rain with thunder') {
      return Colors.red;
    } else {
      return Colors.grey;
    }
  }
}
