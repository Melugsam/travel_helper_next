import 'package:flutter/material.dart';
import 'package:travel_helper_next/data/models/monument/monument.dart';
import 'package:travel_helper_next/domain/services/monuments_request/monuments_request.dart';
import 'package:travel_helper_next/data/json/maps_data.dart';
import 'package:travel_helper_next/ui/widgets/modules/screens/results/find_error.dart';

import 'monuments_bottom_sheet_content.dart';

class AttractionsContent extends StatelessWidget {
  AttractionsContent({Key? key}) : super(key: key);
  final MonumentsRequest monumentsRequest = MonumentsRequest.fromJson(mul);

  @override
  Widget build(BuildContext context) {
    return monumentsRequest.data.isEmpty
        ? const FindError()
        : SingleChildScrollView(
            child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: monumentsRequest.data.length - 1,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return _MonumentItem(
                      monumentData: monumentsRequest.data[index],
                    );
                  },
                ),
              ),
            ],
          ));
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
