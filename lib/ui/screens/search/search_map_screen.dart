import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:travel_helper_next/ui/widgets/core/custom_appbar.dart';
import 'package:latlong2/latlong.dart';
import 'package:travel_helper_next/ui/widgets/core/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  LatLng _mapPoint = LatLng(55.748886, 37.617209);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Поиск",
        icon: Icons.search,
        iconSize: 36,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              initialCenter: LatLng(55.748886, 37.617209),
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
                  child: Icon(
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
                    onTap: () => launchUrl(Uri.parse('https://stadiamaps.com/')),
                  ),
                  TextSourceAttribution(
                    textStyle: TextStyle(fontSize: 16),
                    'OpenMapTiles',
                    onTap: () => launchUrl(Uri.parse('https://openmaptiles.org/')),
                  ),
                  TextSourceAttribution(
                    textStyle: TextStyle(fontSize: 16),
                    'OpenStreetMap',
                    onTap: () => launchUrl(Uri.parse('https://www.openstreetmap.org/copyright')),
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
                        onPressed: () {},
                        style: CutstomButtonStyle(
                            borderRadius: 26,
                            customBackgroundColor: Theme.of(context).primaryColor,
                            textColor: Colors.white,
                            textSize: 16)),
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
