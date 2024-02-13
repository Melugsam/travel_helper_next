import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:travel_helper_next/ui/widgets/core/custom_appbar.dart';
import 'package:travel_helper_next/ui/widgets/core/custom_bottom_navigator.dart';
import 'package:latlong2/latlong.dart';
import 'package:travel_helper_next/ui/widgets/core/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
              initialCenter: LatLng(55.4424, 37.3636),
              initialZoom: 6.2,
            ),
            children: [
              TileLayer(
                urlTemplate:
                    'https://tiles.stadiamaps.com/tiles/alidade_smooth/{z}/{x}/{y}@2x.png?api_key=20ad4712-4a32-4aff-a85e-faf739839183',
              ),
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
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: 0,
      ),
    );
  }
}
