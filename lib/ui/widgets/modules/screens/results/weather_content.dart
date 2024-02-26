import 'package:flutter/material.dart';
import 'package:travel_helper_next/domain/services/weather_request/weather_request.dart';
import 'package:travel_helper_next/data/json/openweather.dart';
import 'package:travel_helper_next/ui/widgets/modules/screens/results/find_error.dart';

class WeatherContent extends StatelessWidget {
  WeatherContent({Key? key}) : super(key: key);

  final WeatherRequest weatherRequest = WeatherRequest.fromJson(mul);

  @override
  Widget build(BuildContext context) {
    final currWeather = weatherRequest.list[0];
    return weatherRequest.list.isEmpty
        ? FindError()
        : SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 48,
                ),
                const Text(
                  "Los Santos",
                  style: TextStyle(
                    color: Color.fromRGBO(92, 100, 137, 1.0),
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  degCelsius(currWeather.main.temp),
                  style: const TextStyle(
                    color: Color.fromRGBO(33, 47, 98, 1),
                    fontSize: 32,
                  ),
                ),
                Image.network(
                    "https://openweathermap.org/img/wn/${currWeather.weather[0].icon}@2x.png"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.water_drop_outlined, color: Color.fromRGBO(
                              47, 89, 225, 1.0),),
                          const SizedBox(width: 4.0,),
                          Text(
                            "${currWeather.main.humidity.toInt()}%",
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(66, 72, 86,1)
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.water_drop_outlined, color: Color.fromRGBO(
                              47, 89, 225, 1.0),),
                          const SizedBox(width: 4.0,),
                          Text(
                            "${currWeather.main.humidity.toInt()}%",
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(66, 72, 86,1)
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
  }

  String degCelsius(double num) => "${num.toInt() - 273}°";
}
