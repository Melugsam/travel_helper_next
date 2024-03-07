import 'package:flutter/material.dart';
import 'package:travel_helper_next/data/models/hotel/hotel_class.dart';
import 'package:travel_helper_next/domain/services/hotels_request/hotels_request.dart';
import 'package:travel_helper_next/data/json/tripadvisor.dart';
import 'package:travel_helper_next/ui/widgets/core/custom_network_image.dart';
import 'package:travel_helper_next/ui/widgets/modules/screens/results/find_error.dart';

class HotelsContent extends StatelessWidget {
  HotelsContent({Key? key}) : super(key: key);

  final HotelsRequest hotelsRequest = HotelsRequest.fromJson(mul);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: AlwaysScrollableScrollPhysics(),
      addAutomaticKeepAlives: true,
      scrollDirection: Axis.vertical,
      itemCount: hotelsRequest.data.data.length-1,
      itemBuilder: (context, index) {
        final hotel = hotelsRequest.data.data[index];
        return _HotelBlock(
          title: hotel.title,
          bubbleRating: hotel.bubbleRating,
          cardPhotos: hotel.cardPhotos,
        );
      },
    );
  }
}

class _HotelBlock extends StatelessWidget {
  final String title;
  final BubbleRating bubbleRating;
  final List<CardPhotos> cardPhotos;

  String photoUrl(String url) {
    return url.replaceAll("{width}", "500").replaceAll("{height}", "300");
  }

  _HotelBlock(
      {required this.title,
      required this.bubbleRating,
      required this.cardPhotos});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30,0,30,40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
              height: 180,
              child: cardPhotos.isEmpty
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: ColoredBox(
                        color: Colors.red.shade400,
                      ),
                    )
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: CustomNetworkImage(
                        url: photoUrl(cardPhotos[0].sizes.urlTemplate),
                        boxFit: BoxFit.fill
                      )
              )),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: const Color.fromRGBO(59, 67, 104, 1),
                      fontFamily:
                          Theme.of(context).textTheme.bodySmall!.fontFamily,
                      fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Wrap(children: [
                  const Icon(
                    Icons.person,
                    color: Color.fromRGBO(51, 55, 84, 1.0),
                    size: 24,
                  ),
                  Text(
                    bubbleRating.count,
                    style: TextStyle(
                      color: const Color.fromRGBO(59, 67, 104, 1),
                      fontFamily:
                          Theme.of(context).textTheme.bodySmall!.fontFamily,
                      fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ]),
                const SizedBox(
                  width: 4,
                ),
                Wrap(children: [
                  const Icon(
                    Icons.star,
                    size: 24,
                    color: Colors.yellow,
                  ),
                  Text(
                    bubbleRating.rating.toString(),
                    style: TextStyle(
                      color: const Color.fromRGBO(59, 67, 104, 1),
                      fontFamily:
                          Theme.of(context).textTheme.bodySmall!.fontFamily,
                      fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ])
              ],
            ),
          )
        ],
      ),
    );
  }
}
