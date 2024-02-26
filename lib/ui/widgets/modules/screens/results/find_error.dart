import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class FindError extends StatelessWidget {
  const FindError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          color: const Color.fromRGBO(245, 196, 198, 1.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/images/face_sad.svg",
                    width: 64,
                    height: 64,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text("Информация\nне получена ")
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Попробуйте ещё раз\nили позднее",
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        SizedBox(
          height: 50,
          width: 260,
          child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStatePropertyAll<RoundedRectangleBorder?>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26.0),
                      side: const BorderSide(
                          color: Color.fromRGBO(50, 55, 67, 1.0)))),
              backgroundColor:
                  const MaterialStatePropertyAll<Color?>(Colors.white),
              foregroundColor: const MaterialStatePropertyAll<Color?>(
                  Color.fromRGBO(50, 55, 67, 1.0)),
            ),
            onPressed: () {
              context.go("/search");
            },
            child: Text(
              "Попробовать ещё раз",
              style: TextStyle(
                  fontWeight: Theme.of(context).textTheme.bodySmall!.fontWeight,
                  fontSize: Theme.of(context).textTheme.bodySmall!.fontSize),
            ),
          ),
        )
      ],
    );
  }
}
