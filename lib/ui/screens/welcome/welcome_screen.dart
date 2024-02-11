import 'package:flutter/material.dart';
import 'package:travel_helper_next/ui/widgets/core/custom_button.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
          height: 50,
          margin: EdgeInsets.symmetric(vertical: 80, horizontal: 20),
          child: CustomButton(
              text: "Начать",
              icon: Icons.arrow_forward,
              onPressed: () => {context.go('/login')},
              style: CutstomButtonStyle(
                  borderRadius: 4,
                  customBackgroundColor: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  textSize: 16))),
    );
  }
}
