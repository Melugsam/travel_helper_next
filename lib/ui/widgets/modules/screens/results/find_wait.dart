import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FindWait extends StatelessWidget {
  const FindWait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          color: const Color.fromRGBO(192, 205, 255, 1.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Text("Поиск не произведен", textAlign: TextAlign.center,)
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'Перейдите на страницу "Поиск",\n выберете местность,\n нажмите "Найти"',
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
              context.go('/search');
            },
            child: Text(
              "На страницу поиска",
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
