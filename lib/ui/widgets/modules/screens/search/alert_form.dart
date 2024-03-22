import 'package:flutter/material.dart';
import 'package:travel_helper_next/ui/widgets/core/custom_button.dart';

class AlertForm extends StatefulWidget {
  const AlertForm({super.key});

  @override
  State<AlertForm> createState() => _AlertFormState();
}

class _AlertFormState extends State<AlertForm> {
  TextEditingController inDateController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const Text(
            "Пожалуйста укажите\nдаты заезда и выезда",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 16,
          ),
          TextFormField(
            readOnly: true,
            controller: inDateController,
            onTap: () async {
              showDate(context, inDateController);
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Пожалуйста, укажите дату";
              }
              return null;
            },
            style: TextStyle(
              fontFamily: Theme.of(context).textTheme.bodySmall!.fontFamily,
              fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
              color: const Color.fromRGBO(66, 72, 86, 1.0),
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide.none),
              filled: true,
              fillColor: const Color.fromRGBO(243, 244, 246, 1.0),
              prefixIcon: const Icon(Icons.calendar_month),
              hintText: "Дата заезда",
              hintStyle:
                  const TextStyle(color: Color.fromRGBO(189, 193, 202, 1.0)),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 2),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(229, 16, 87, 1.0), width: 2),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 16, 40, 16),
            child: CustomButton(
              text: "Поиск",
              icon: Icons.search,
              onPressed: () {
                if (_formKey.currentState!.validate()) {}
              },
              style: CustomButtonStyle(
                  borderRadius: 26,
                  customBackgroundColor: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  textSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> showDate(
      BuildContext context, TextEditingController textEditingController) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      cancelText: "Отмена",
      confirmText: "Принять",
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year, DateTime.now().month + 2, 0),
      builder: (context, child) {
        return Theme(
            data: ThemeData(
              textTheme: Theme.of(context).textTheme.copyWith(
                    bodyLarge: const TextStyle(fontSize: 16),
                  ),
            ),
            child: child!);
      },
    );
    if (picked != null) {
      if (context.mounted) {
        textEditingController.text = picked.toString().split(" ")[0];
      }
    }
  }
}
