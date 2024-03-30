import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_helper_next/bloc/auth/register/register_bloc.dart';
import 'package:travel_helper_next/ui/widgets/core/custom_button.dart';
import 'package:travel_helper_next/ui/widgets/core/labeled_text_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _regGlobalKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repeatPasswordController = TextEditingController();
  bool error = false;
  String errorData = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _regGlobalKey,
            child: Column(children: [
              const SizedBox(
                height: 120,
              ),
              Text(
                "Добро пожаловать!",
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
                      controller: emailController,
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
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Повторите пароль",
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
                      controller: repeatPasswordController,
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
                    BlocBuilder<RegisterBloc, RegisterState>(
                      builder: (context, state) {
                        if (state is SuccessRegisterState) {
                          WidgetsBinding.instance
                              .addPostFrameCallback((timeStamp) {
                            setState(() {
                              context.go("/search");
                            });
                          });
                        }
                        if (state is WaitingRegisterState) {
                          return const CircularProgressIndicator();
                        }
                        if (state is ErrorRegisterState ||
                            state is ErrorPasswordMatchState ||
                            state is ErrorPasswordLengthState ||
                            state is ErrorEmailState)
                         {
                          WidgetsBinding.instance
                              .addPostFrameCallback((timeStamp) {
                            setState(() {
                              error = true;
                              if (state is ErrorRegisterState){
                                errorData = "Некорректно введены данные";
                              }
                              if (state is ErrorPasswordMatchState){
                                errorData = "Пароли не совпадают";
                              }
                              if (state is ErrorPasswordLengthState){
                                errorData = "Пароль меньше 6 символов";
                              }
                              if (state is ErrorEmailState){
                                errorData = "Некорректно введена почта";
                              }
                            });
                          });
                        }
                        return CustomButton(
                            text: "Зарегистрироваться",
                            onPressed: () {
                              if (_regGlobalKey.currentState!.validate() &&
                                  error == false) {
                                BlocProvider.of<RegisterBloc>(context).add(
                                    TryRegisterEvent(
                                        email: emailController.text,
                                        password: passwordController.text,
                                        repeatPassword:
                                            repeatPasswordController.text));
                              }
                            },
                            style: CustomButtonStyle(
                                borderRadius: 26,
                                customBackgroundColor:
                                    Theme.of(context).primaryColor,
                                textColor: Colors.white,
                                textSize: 16));
                      },
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Есть аккаунт?",
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
                            onPressed: () => {context.go('/login')},
                            style: ButtonStyle(
                                overlayColor: MaterialStateColor.resolveWith(
                                    (states) => Colors.transparent),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.only(left: 4)),
                                tapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap),
                            child: Text(
                              "Войти",
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
        ),
      ),
    );
  }
}
