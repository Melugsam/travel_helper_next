import 'package:flutter/material.dart';
import 'package:travel_helper_next/ui/widgets/modules/screens/results/monuments_content/monuments_content.dart';
import 'package:travel_helper_next/ui/widgets/modules/screens/results/hotels_content.dart';
import 'package:travel_helper_next/ui/widgets/modules/screens/results/weather_content.dart';

class ResultsScreen extends StatefulWidget {
  final int index = 0;

  const ResultsScreen({super.key});

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 3, vsync: this, initialIndex: widget.index);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40,),
        SizedBox(
          height: 80,
          child: TabBar(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            dividerHeight: 0,
            splashFactory: NoSplash.splashFactory,
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                return states.contains(MaterialState.focused) ? null : Colors.transparent;
              },
            ),
            controller: _tabController,
            tabs: const [
              Tab(
                text: "Отели",
                icon: Icon(
                  Icons.hotel,
                  size: 24,
                ),
                iconMargin: EdgeInsets.zero,
              ),
              Tab(
                text: "Погода",
                icon: Icon(
                  Icons.cloud,
                  size: 24,
                ),
                iconMargin: EdgeInsets.zero,
              ),
              Tab(
                text: "Памятники",
                icon: Icon(
                  Icons.museum,
                  size: 24,
                ),
                iconMargin: EdgeInsets.zero,
              ),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(controller: _tabController, children: const [
            HotelsContent(),
            WeatherContent(),
            AttractionsContent(),
          ]),
        )
      ],
    );
  }

}
