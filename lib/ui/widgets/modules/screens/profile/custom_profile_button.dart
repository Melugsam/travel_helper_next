import 'package:flutter/material.dart';

class CustomProfileButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomProfileButton(
      {super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: Container(
        width: 350,
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  CircleAvatar(
                    backgroundColor: const Color.fromRGBO(245, 241, 254, 1.0),
                    child: Icon(
                      icon,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    text,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(66, 70, 97, 1),
                      fontFamily: Theme.of(context).textTheme.bodySmall!.fontFamily,
                      fontSize: 16,
                    ),
                  ),
                ]),
              ),
              const Icon(
                Icons.chevron_right_sharp,
                size: 24,
              )
            ],
          ),
        ),
      ),
    );
  }
}
