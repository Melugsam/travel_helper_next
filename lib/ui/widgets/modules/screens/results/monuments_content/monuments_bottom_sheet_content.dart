import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_helper_next/bloc/navigation/results/monuments/photos/monuments_photos_bloc.dart';
import 'package:travel_helper_next/data/models/monument/monument.dart';

@override
void monumentsBottomSheetContent(
    BuildContext context, MonumentData monumentData) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.6,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16),
            child: Column(
              children: [
                BlocBuilder<MonumentsPhotosBloc, MonumentsPhotosState>(
                  builder: (context, state) {
                    if (state is MonumentPhotosError) {
                      return const SizedBox();
                    }
                    if (state is MonumentPhotosLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (state is MonumentPhotosReceived) {
                      return SizedBox(
                          width: 300, height: 200, child: state.photoWidget);
                    } else {
                      return const Center(
                        child: Text("123"),
                      );
                    }
                  },
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  monumentData.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(66, 70, 97, 1),
                    fontFamily:
                        Theme.of(context).textTheme.bodySmall!.fontFamily,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  monumentData.full_address,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(66, 70, 97, 1),
                    fontFamily:
                        Theme.of(context).textTheme.bodySmall!.fontFamily,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Wrap(children: [
                      const Icon(
                        Icons.person,
                        color: Color.fromRGBO(51, 55, 84, 1.0),
                        size: 24,
                      ),
                      Text(
                        monumentData.review_count.toString(),
                        style: TextStyle(
                          color: const Color.fromRGBO(59, 67, 104, 1),
                          fontFamily:
                              Theme.of(context).textTheme.bodySmall!.fontFamily,
                          fontSize:
                              Theme.of(context).textTheme.bodySmall!.fontSize,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ]),
                    const SizedBox(
                      width: 32,
                    ),
                    Wrap(children: [
                      const Icon(
                        Icons.star,
                        size: 24,
                        color: Colors.yellow,
                      ),
                      Text(
                        monumentData.rating.toString(),
                        style: TextStyle(
                          color: const Color.fromRGBO(59, 67, 104, 1),
                          fontFamily:
                              Theme.of(context).textTheme.bodySmall!.fontFamily,
                          fontSize:
                              Theme.of(context).textTheme.bodySmall!.fontSize,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ]),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                monumentData.description.isNotEmpty
                    ? Expanded(
                        child: Column(
                          children: [
                            Text(
                              "Описание:",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color.fromRGBO(59, 67, 104, 1),
                                fontFamily: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .fontFamily,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .fontSize,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: monumentData.description.length - 1,
                              itemBuilder: (context, index) {
                                return Text(
                                  textAlign: TextAlign.center,
                                  monumentData.description[index],
                                  style: TextStyle(
                                    color: const Color.fromRGBO(59, 67, 104, 1),
                                    fontFamily: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .fontFamily,
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .fontSize,
                                    fontWeight: FontWeight.w500,
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      )
                    : SizedBox()
              ],
            ),
          ),
        ),
      );
    },
  );
}
