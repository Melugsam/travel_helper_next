import 'package:flutter/material.dart';
import 'package:travel_helper_next/ui/widgets/modules/screens/profile/custom_profile_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 100, 20, 0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(178, 178, 187, 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    height: 100,
                    width: 100,
                    child: const Icon(
                      Icons.person,
                      size: 40,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ashley Robinson",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(66, 70, 97, 1),
                            fontFamily: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .fontFamily,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "this_is_temp@gmail.com",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(66, 70, 97, 1),
                            fontFamily: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .fontFamily,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 35,
                      width: 120,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStatePropertyAll<
                                  RoundedRectangleBorder?>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  side: const BorderSide(
                                      color: Color.fromRGBO(50, 55, 67, 1.0)))),
                          backgroundColor:
                              const MaterialStatePropertyAll<Color?>(
                                  Colors.white),
                          foregroundColor:
                              const MaterialStatePropertyAll<Color?>(
                                  Color.fromRGBO(50, 55, 67, 1.0)),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Настроить",
                          style: TextStyle(
                            fontWeight: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .fontWeight,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const Divider(),
                const SizedBox(
                  height: 12,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Нажмите кнопку "Настроить", чтобы изменить описание',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(66, 70, 97, 1),
                      fontFamily:
                          Theme.of(context).textTheme.bodySmall!.fontFamily,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: const Color.fromRGBO(222, 225, 230, 1.0),
              child: Column(
                children: [
                  const SizedBox(height: 24,),
                  CustomProfileButton(icon: Icons.settings, text: "Настройки"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
