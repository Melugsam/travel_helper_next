import 'package:flutter/material.dart';

class LabeledTextField extends StatelessWidget {
  final String labelText;
  final String hintText;

  LabeledTextField({
    super.key,
    required this.labelText,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              labelText,
              style: TextStyle(
                fontFamily: Theme.of(context).textTheme.bodySmall!.fontFamily,
                fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                color: Color.fromRGBO(66, 72, 86, 1.0),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          TextField(
            style: TextStyle(
              fontFamily: Theme.of(context).textTheme.bodySmall!.fontFamily,
              fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
              color: Color.fromRGBO(66, 72, 86, 1.0),
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Color.fromRGBO(243, 244, 246, 1.0),
                hintText: hintText,
                hintStyle: TextStyle(color: Color.fromRGBO(189, 193, 202, 1.0)),
                contentPadding: EdgeInsets.symmetric(horizontal: 16)),
          )
        ],
      ),
    );
  }
}
