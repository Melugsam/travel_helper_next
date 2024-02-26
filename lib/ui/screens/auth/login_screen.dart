import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_helper_next/ui/widgets/core/custom_button.dart';
import 'package:travel_helper_next/ui/widgets/core/labeled_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Column(children: [
          SizedBox(
            height: 120,
          ),
          Text(
            "Рады видеть снова!",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(
            height: 8,
          ),
          Text("Travel Helper", style: Theme.of(context).textTheme.bodyMedium),
          SizedBox(
            height: 64,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              children: [
                LabeledTextField(
                  labelText: "Почта",
                  hintText: "Введите почту",
                ),
                SizedBox(
                  height: 16,
                ),
                LabeledTextField(
                  labelText: "Пароль",
                  hintText: "Введите пароль",
                ),
                SizedBox(
                  height: 16,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        overlayColor: MaterialStateColor.resolveWith(
                            (states) => Colors.transparent),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.only(left: 20)),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                    child: Text(
                      "Забыли пароль?",
                      style: TextStyle(
                          fontFamily:
                              Theme.of(context).textTheme.bodySmall!.fontFamily,
                          fontSize:
                              Theme.of(context).textTheme.bodySmall!.fontSize,
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                ),
                SizedBox(
                  height: 64,
                ),
                CustomButton(
                    text: "Войти (так пропощу)",
                    onPressed: () {
                      context.go('/search');
                    },
                    style: CutstomButtonStyle(
                        borderRadius: 26,
                        customBackgroundColor: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        textSize: 16)),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Нет аккаунта?",
                      style: TextStyle(
                          fontFamily:
                              Theme.of(context).textTheme.bodySmall!.fontFamily,
                          fontSize:
                              Theme.of(context).textTheme.bodySmall!.fontSize,
                          fontWeight: FontWeight.w400),
                    ),
                    TextButton(
                        onPressed: () => {context.go('/register')},
                        style: ButtonStyle(
                            overlayColor: MaterialStateColor.resolveWith(
                                (states) => Colors.transparent),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.only(left: 4)),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                        child: Text(
                          "Регистрация",
                          style: TextStyle(
                              fontFamily: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .fontFamily,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .fontSize,
                              fontWeight: FontWeight.w600),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    ));
  }
}
