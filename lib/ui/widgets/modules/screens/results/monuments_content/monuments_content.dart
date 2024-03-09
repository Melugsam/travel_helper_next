import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_helper_next/bloc/navigation/results/monuments/monuments_info_bloc.dart';
import 'package:travel_helper_next/data/models/monument/monument.dart';
import 'package:travel_helper_next/domain/services/monuments_response/monuments_response.dart';
import 'package:travel_helper_next/data/json/maps_data.dart';
import 'package:travel_helper_next/ui/widgets/modules/screens/results/find_error.dart';
import 'package:travel_helper_next/ui/widgets/modules/screens/results/find_wait.dart';

import 'monuments_bottom_sheet_content.dart';

class AttractionsContent extends StatelessWidget {
  AttractionsContent({Key? key}) : super(key: key);
  final MonumentsResponse monumentsResponse = MonumentsResponse.fromJson(mul);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MonumentsInfoBloc, MonumentsInfoState>(
        builder: (context, state) {
      if (state is MonumentInfoError) {
        return const FindError();
      }
      if (state is MonumentInfoLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      if (state is MonumentInfoReceived) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                child: ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: monumentsResponse.data.length - 1,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return _MonumentItem(
                      monumentData: monumentsResponse.data[index],
                    );
                  },
                ),
              ),
            ],
          ),
        );
      } else {
        return const FindWait();
      }
    });
  }
}

class _MonumentItem extends StatelessWidget {
  final MonumentData monumentData;

  const _MonumentItem({required this.monumentData});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        monumentsBottomSheetContent(context, monumentData);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          height: 90,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              width: 1,
              color: const Color.fromRGBO(66, 70, 97, 1),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: FractionallySizedBox(
                    alignment: Alignment.centerLeft,
                    widthFactor: 0.9,
                    child: Text(
                      monumentData.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(66, 70, 97, 1),
                        fontFamily:
                            Theme.of(context).textTheme.bodySmall!.fontFamily,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const Icon(
                  Icons.chevron_right_sharp,
                  size: 32,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
