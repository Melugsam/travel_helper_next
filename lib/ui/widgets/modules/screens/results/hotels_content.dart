import 'package:flutter/material.dart';
import 'package:travel_helper_next/data/models/hotel/hotel_class.dart';
import 'package:travel_helper_next/domain/services/hotels_request/hotels_request.dart';
import 'package:travel_helper_next/data/json/tripadvisor.dart';

class HotelsContent extends StatelessWidget {
  HotelsContent({Key? key}) : super(key: key);

  final HotelsRequest hotels = HotelsRequest.fromJson(mul);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: AlwaysScrollableScrollPhysics(),
      addAutomaticKeepAlives: true,
      scrollDirection: Axis.vertical,
      itemCount: hotels.data.data.length-1,
      itemBuilder: (context, index) {
        final hotel = hotels.data.data[index];
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
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
              height: 180,
              child: cardPhotos.isEmpty ? ClipRRect(borderRadius: BorderRadius.circular(8.0), child: ColoredBox(color: Colors.red.shade400,),) : ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  photoUrl(cardPhotos[0].sizes.urlTemplate),
                  fit: BoxFit.fill,
                ),
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
                      fontFamily:
                          Theme.of(context).textTheme.bodySmall!.fontFamily,
                      fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Wrap(children: [
                  Icon(Icons.person, size: 24,),
                  Text(
                    bubbleRating.count,
                    style: TextStyle(
                      fontFamily:
                          Theme.of(context).textTheme.bodySmall!.fontFamily,
                      fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ]),
                SizedBox(width: 4,),
                Wrap(children: [
                  Icon(Icons.star, size: 24, color: Colors.yellow,),
                  Text(
                    bubbleRating.rating.toString(),
                    style: TextStyle(
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
