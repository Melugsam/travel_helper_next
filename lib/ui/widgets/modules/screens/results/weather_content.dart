import 'package:flutter/material.dart';

import 'package:travel_helper_next/data/json/openweather.dart';
import 'package:travel_helper_next/data/models/weather/weather.dart';
import 'package:travel_helper_next/domain/services/weather_request/weather_request.dart';
import 'package:travel_helper_next/ui/widgets/core/custom_network_image.dart';
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
                  height: 24,
                ),
                const Text(
                  "Los Santos",
                  style: TextStyle(
                      color: Color.fromRGBO(59, 67, 104, 1),
                      fontWeight: FontWeight.w900,
                      fontSize: 32),
                ),
                Text(
                  degCelsius(currWeather.main.temp),
                  style: const TextStyle(
                    color: Color.fromRGBO(59, 67, 104, 1),
                    fontSize: 32,
                  ),
                ),
                CustomNetworkImage(
                    url:
                        "https://openweathermap.org/img/wn/${currWeather.weather[0].icon}@2x.png"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.water_drop_outlined,
                            color: Color.fromRGBO(47, 89, 225, 1.0),
                          ),
                          const SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            "${currWeather.main.humidity.toInt()}%",
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(66, 72, 86, 1)),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.thermostat,
                            color: Color.fromRGBO(47, 89, 225, 1.0),
                          ),
                          const SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            "${currWeather.main.pressure.toInt()}Bar",
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(66, 72, 86, 1)),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.air,
                            color: Color.fromRGBO(47, 89, 225, 1.0),
                          ),
                          const SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            "${currWeather.wind.speed.toInt()}km/h",
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(66, 72, 86, 1)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: weatherRequest.list.length - 2 < 5
                        ? weatherRequest.list.length - 2
                        : 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final hourWeather = weatherRequest.list[index];
                      return _WeatherItemHour(hourWeather: hourWeather);
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: weatherRequest.list.length - 1,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      final dayWeather = weatherRequest.list[index];
                      return _WeatherItemDay(dayWeather: dayWeather);
                    },
                  ),
                ),
                const SizedBox(
                  height: 24,
                )
              ],
            ),
          );
  }

  String degCelsius(double num) => "${num.toInt() - 273}°";
}

class _WeatherItemHour extends StatelessWidget {
  final WeatherData hourWeather;

  _WeatherItemHour({
    Key? key,
    required this.hourWeather,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${drFormat(hourWeather.dt_txt)}",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(66, 70, 97, 1),
              fontFamily: Theme.of(context).textTheme.bodySmall!.fontFamily,
              fontSize: 16,
            ),
          ),
          SizedBox(
              child: CustomNetworkImage(
            url:
                "https://openweathermap.org/img/wn/${hourWeather.weather[0].icon}.png",
            width: 50,
            height: 50,
          )),
          Text(
            "${degCelsius(hourWeather.main.temp)}",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(79, 85, 118, 1),
              fontFamily: Theme.of(context).textTheme.bodySmall!.fontFamily,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}

String degCelsius(double num) => "${num.toInt() - 273}";

String drFormat(String dt_txt) {
  int tmp =
      int.parse(dt_txt.substring(dt_txt.indexOf(" "), dt_txt.indexOf(":")));
  int hour = tmp % 12;
  if (hour == 0) {
    hour = 12;
  }
  String period = tmp < 12 ? "AM" : "PM";
  return "${hour} $period";
}

class _WeatherItemDay extends StatelessWidget {
  final WeatherData dayWeather;

  const _WeatherItemDay({required this.dayWeather});

  @override
  Widget build(BuildContext context) {
    return int.parse(dayWeather.dt_txt.substring(dayWeather.dt_txt.indexOf(" "),
                dayWeather.dt_txt.indexOf(":"))) ==
            12
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text("${temp(dayWeather.dt_txt)}",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(79, 85, 118, 1),
                      fontFamily:
                          Theme.of(context).textTheme.bodySmall!.fontFamily,
                      fontSize: 20,
                    )),
              ),
              CustomNetworkImage(
                url:
                    "https://openweathermap.org/img/wn/${dayWeather.weather[0].icon}.png",
                height: 50,
                width: 50,
              ),
              const SizedBox(width: 40,),
              Text("${degCelsius(dayWeather.main.temp)}",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(79, 85, 118, 1),
                    fontFamily:
                        Theme.of(context).textTheme.bodySmall!.fontFamily,
                    fontSize: 20,
                  )),
            ],
          )
        : SizedBox();
  }

  String degCelsius(double num) => "${num.toInt() - 273}";

  String temp(String dt_txt) {
    List<String> t =
        dt_txt.substring(0, dt_txt.lastIndexOf("-") + 3).split("-");
    List<String> days = [
      'Понедельник',
      'Вторник',
      'Среда',
      'Четверг',
      'Пятница',
      'Суббота',
      'Воскресенье'
    ];
    DateTime date = DateTime(int.parse(t[0]), int.parse(t[1]), int.parse(t[2]));
    return days[date.weekday - 1].toString();
  }
}
