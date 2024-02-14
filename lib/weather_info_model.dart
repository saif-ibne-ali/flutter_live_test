class WeatherInfoModel {
  String? city;
  int? temperature;
  String? condition;
  int? humidity;
  double? windSpeed;

  WeatherInfoModel(
      {this.city,
      this.temperature,
      this.condition,
      this.humidity,
      this.windSpeed});

  WeatherInfoModel.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    temperature = json['temperature'];
    condition = json['condition'];
    humidity = json['humidity'];
    windSpeed = json['windSpeed'];
  }
}
