import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_helper_next/bloc/auth/login/login_bloc.dart';
import 'package:travel_helper_next/ui/widgets/core/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _authFormKey = GlobalKey<FormState>();
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool error = false;
  String errorData = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _authFormKey,
            child: Column(children: [
              const SizedBox(
                height: 120,
              ),
              Text(
                "Рады видеть снова!",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 8,
              ),
              Text("Travel Helper",
                  style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(
                height: 64,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Почта",
                        style: TextStyle(
                          fontFamily:
                              Theme.of(context).textTheme.bodySmall!.fontFamily,
                          fontSize:
                              Theme.of(context).textTheme.bodySmall!.fontSize,
                          color: const Color.fromRGBO(66, 72, 86, 1.0),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      controller: loginController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          setState(() {
                            errorData = "Пожалуйста, заполните пустые поля";
                            error = true;
                          });
                          return;
                        }
                        setState(() {
                          error = false;
                        });
                        return null;
                      },
                      style: TextStyle(
                        fontFamily:
                            Theme.of(context).textTheme.bodySmall!.fontFamily,
                        fontSize:
                            Theme.of(context).textTheme.bodySmall!.fontSize,
                        color: const Color.fromRGBO(66, 72, 86, 1.0),
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: const Color.fromRGBO(243, 244, 246, 1.0),
                          hintText: "Введите почту",
                          hintStyle: const TextStyle(
                              color: Color.fromRGBO(189, 193, 202, 1.0)),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 16)),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Пароль",
                        style: TextStyle(
                          fontFamily:
                              Theme.of(context).textTheme.bodySmall!.fontFamily,
                          fontSize:
                              Theme.of(context).textTheme.bodySmall!.fontSize,
                          color: const Color.fromRGBO(66, 72, 86, 1.0),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          setState(() {
                            errorData = "Пожалуйста, заполните пустые поля";
                            error = true;
                          });
                          return;
                        }
                        setState(() {
                          error = false;
                        });
                        return null;
                      },
                      style: TextStyle(
                        fontFamily:
                            Theme.of(context).textTheme.bodySmall!.fontFamily,
                        fontSize:
                            Theme.of(context).textTheme.bodySmall!.fontSize,
                        color: const Color.fromRGBO(66, 72, 86, 1.0),
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: const Color.fromRGBO(243, 244, 246, 1.0),
                          hintText: "Введите пароль",
                          hintStyle: const TextStyle(
                              color: Color.fromRGBO(189, 193, 202, 1.0)),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 16)),
                    ),
                    const SizedBox(
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
                                const EdgeInsets.only(left: 20)),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                        child: Text(
                          "Забыли пароль?",
                          style: TextStyle(
                              fontFamily: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .fontFamily,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .fontSize,
                              fontWeight: FontWeight.w400,
                              color: Theme.of(context).colorScheme.primary),
                        ),
                      ),
                    ),
                    error
                        ? Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Text(
                              errorData,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.red,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        : const SizedBox(),
                    const SizedBox(
                      height: 48,
                    ),
                    BlocBuilder<LoginBloc, LoginState>(
                      builder: (context, state) {
                        if (state is LoginInitial) {
                          return CustomButton(
                              text: "Войти",
                              onPressed: () {
                                if (_authFormKey.currentState!.validate() &&
                                    error == false) {
                                  BlocProvider.of<LoginBloc>(context).add(
                                      TryLoginEvent(
                                          mail: loginController.text,
                                          password: passwordController.text));
                                }
                              },
                              style: CustomButtonStyle(
                                  borderRadius: 26,
                                  customBackgroundColor:
                                      Theme.of(context).primaryColor,
                                  textColor: Colors.white,
                                  textSize: 16));
                        }
                        if (state is SuccessLoginState) {
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            context.go("/search");
                          });
                        }
                        if (state is WaitingLoginState) {
                          return const CircularProgressIndicator();
                        }
                        if (state is ErrorLoginState) {
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            setState(() {
                              error = true;
                              errorData = "Некорректно введены данные";
                            });
                          });
                          return CustomButton(
                              text: "Войти",
                              onPressed: () {
                                if (_authFormKey.currentState!.validate() &&
                                    error == false) {
                                  BlocProvider.of<LoginBloc>(context).add(
                                      TryLoginEvent(
                                          mail: loginController.text,
                                          password: passwordController.text));
                                }
                              },
                              style: CustomButtonStyle(
                                  borderRadius: 26,
                                  customBackgroundColor:
                                      Theme.of(context).primaryColor,
                                  textColor: Colors.white,
                                  textSize: 16));
                        } else {
                          return const SizedBox();
                        }
                      },
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Нет аккаунта?",
                          style: TextStyle(
                              fontFamily: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .fontFamily,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .fontSize,
                              fontWeight: FontWeight.w400),
                        ),
                        TextButton(
                          onPressed: () => {context.go('/register')},
                          style: ButtonStyle(
                              overlayColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.transparent),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.only(left: 4)),
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
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
