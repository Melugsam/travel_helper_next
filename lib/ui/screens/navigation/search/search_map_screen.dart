import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';
import 'package:travel_helper_next/bloc/navigation/results/hotels/hotels_info_bloc.dart';
import 'package:travel_helper_next/bloc/navigation/results/monuments/monuments_info_bloc.dart';
import 'package:travel_helper_next/bloc/navigation/results/weather/weather_info_bloc.dart';
import 'package:travel_helper_next/ui/widgets/core/custom_button.dart';
import 'package:travel_helper_next/ui/widgets/core/labeled_text_field.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  LatLng _mapPoint = const LatLng(55.748886, 37.617209);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              initialCenter: const LatLng(55.748886, 37.617209),
              initialZoom: 8.2,
              onTap: (tapPosition, point) {
                setState(() {
                  _mapPoint = point;
                });
              },
            ),
            children: [
              TileLayer(
                urlTemplate:
                    'https://tiles.stadiamaps.com/tiles/alidade_smooth/{z}/{x}/{y}@2x.png?api_key=20ad4712-4a32-4aff-a85e-faf739839183',
              ),
              MarkerLayer(markers: [
                Marker(
                  point: _mapPoint,
                  child: const Icon(
                    Icons.location_on,
                    color: Colors.redAccent,
                    size: 32,
                  ),
                  width: 80.0,
                  height: 80.0,
                )
              ]),
              RichAttributionWidget(
                animationConfig: const ScaleRAWA(), // Или `FadeRAWA`
                attributions: [
                  TextSourceAttribution(
                    textStyle: TextStyle(fontSize: 16),
                    'Stadia Maps',
                    onTap: () =>
                        launchUrl(Uri.parse('https://stadiamaps.com/')),
                  ),
                  TextSourceAttribution(
                    textStyle: TextStyle(fontSize: 16),
                    'OpenMapTiles',
                    onTap: () =>
                        launchUrl(Uri.parse('https://openmaptiles.org/')),
                  ),
                  TextSourceAttribution(
                    textStyle: TextStyle(fontSize: 16),
                    'OpenStreetMap',
                    onTap: () => launchUrl(
                        Uri.parse('https://www.openstreetmap.org/copyright')),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CustomButton(
                      text: "Найти",
                      icon: Icons.map_outlined,
                      onPressed: () {
                        _showDialog(context);
                      },
                      style: CustomButtonStyle(
                          borderRadius: 26,
                          customBackgroundColor: Theme.of(context).primaryColor,
                          textColor: Colors.white,
                          textSize: 16),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

Future<void> _showDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Center(
            child: Text(
          "Уточните параметры",
          style: TextStyle(fontSize: 20),
        )),
        contentPadding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
        content: const SingleChildScrollView(
          child: ListBody(
            children: [
              Text(
                "Пожалуйста укажите\nдаты заезда и выезда",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              DataTextField(
                hintText: "Дата заезда",
              ),
              DataTextField(
                hintText: "Дата выезда",
              )
            ],
          ),
        ),
        actionsPadding: const EdgeInsets.fromLTRB(60,16,60,20),
        actions: [
          CustomButton(
            text: "Поиск",
            icon: Icons.search,
            onPressed: () {},
            style: CustomButtonStyle(
                borderRadius: 26,
                customBackgroundColor: Theme.of(context).primaryColor,
                textColor: Colors.white,
                textSize: 16),
          )
        ],
      );
    },
  );
}

class DataTextField extends StatefulWidget {
  final String hintText;

  const DataTextField({super.key, required this.hintText});

  @override
  State<DataTextField> createState() => _DataTextFieldState();
}

class _DataTextFieldState extends State<DataTextField> {
  final TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: TextField(
        readOnly: true,
        controller: _dateController,
        onTap: () {
          selectDate(context);
        },
        style: TextStyle(
          fontFamily: Theme.of(context).textTheme.bodySmall!.fontFamily,
          fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
          color: const Color.fromRGBO(66, 72, 86, 1.0),
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide.none),
          filled: true,
          fillColor: const Color.fromRGBO(243, 244, 246, 1.0),
          prefixIcon: const Icon(Icons.calendar_month),
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: Color.fromRGBO(189, 193, 202, 1.0)),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 2),
          ),
        ),
      ),
    );
  }

  Future<void> selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      cancelText: "Отмена",
      confirmText: "Принять",
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year, DateTime.now().month + 2, 0),
      builder: (context, child) {
        return Theme(
            data: ThemeData(
              textTheme: Theme.of(context).textTheme.copyWith(
                    bodyLarge: const TextStyle(fontSize: 16),
                  ),
            ),
            child: child!);
      },
    );
    if (picked != null) {
      setState(() {
        _dateController.text = picked.toString().split(" ")[0];
      });
    }
  }
}
