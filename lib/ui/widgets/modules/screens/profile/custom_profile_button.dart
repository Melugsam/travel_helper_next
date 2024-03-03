import 'package:flutter/material.dart';

class CustomProfileButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomProfileButton(
      {super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 350,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: () {}, icon: Icon(icon)),
            const SizedBox(width: 16,),
            Text(
              text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(66, 70, 97, 1),
                fontFamily: Theme.of(context).textTheme.bodySmall!.fontFamily,
                fontSize: 16,
              ),
            ),
            Icon(Icons.chevron_right_sharp, size: 24,)
          ],
        ),
      ),
    );
  }
}
