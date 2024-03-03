import 'package:flutter/material.dart';

class CustomNetworkImage extends StatelessWidget {
  final String url;
  final double? height;
  final double? width;
  final BoxFit? boxFit;

  CustomNetworkImage(
      {Key? key, required this.url, this.height, this.width, this.boxFit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    try {
      return Image.network(
        url,
        width: width,
        height: height,
        fit: boxFit ?? BoxFit.contain,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return Center(child: CircularProgressIndicator());
        },
      );
    } catch (e) {
      return Placeholder();
    }
  }
}
