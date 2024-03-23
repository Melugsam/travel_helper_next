import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';
import 'package:travel_helper_next/bloc/navigation/results/hotels/hotels_info_bloc.dart';
import 'package:travel_helper_next/ui/widgets/core/custom_button.dart';

class AlertForm extends StatefulWidget {
  final LatLng mapPoint;

  const AlertForm({super.key, required this.mapPoint});

  @override
  State<AlertForm> createState() => _AlertFormState();
}

class _AlertFormState extends State<AlertForm> {
  TextEditingController inDateController = TextEditingController();
  TextEditingController outDateController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool error = false;
  bool outDateEnabled = false;

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
              await showDate(context, inDateController, true);
              if (inDateController.text.isNotEmpty) {
                setState(() {
                  outDateEnabled = true;
                });
              }
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                setState(() {
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
                  const TextStyle(color: Color.fromRGBO(79, 79, 84, 1.0)),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 2),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(229, 16, 87, 1.0), width: 2),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          TextFormField(
            readOnly: true,
            enabled: outDateEnabled,
            controller: outDateController,
            onTap: () async {
              showDate(context, outDateController, false);
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                setState(() {
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
              fillColor: outDateEnabled
                  ? const Color.fromRGBO(243, 244, 246, 1.0)
                  : const Color.fromRGBO(195, 203, 203, 1.0),
              prefixIcon: const Icon(Icons.calendar_month),
              hintText: "Дата выезда",
              hintStyle:
                  const TextStyle(color: Color.fromRGBO(79, 79, 84, 1.0)),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 2),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(229, 16, 87, 1.0), width: 2),
              ),
            ),
          ),
          error
              ? const Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Text(
                    "Пожалуйста, заполните\n пустые поля",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.red,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              : const SizedBox(),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 16, 40, 16),
            child: CustomButton(
              text: "Поиск",
              icon: Icons.search,
              onPressed: () {
                if (_formKey.currentState!.validate() && error==false) {
                  Navigator.pop(context);
                  // BlocProvider.of<HotelsInfoBloc>(context).add(
                  //     MakeRequestHotels(
                  //         mapPoint: widget.mapPoint,
                  //         checkInDate: inDateController.text,
                  //         checkOutDate: outDateController.text));
                  context.go("/results");
                }
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

  Future<void> showDate(BuildContext context,
      TextEditingController textEditingController, bool inDate) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate:
          inDate ? DateTime.now() : DateTime.parse(inDateController.text),
      cancelText: "Отмена",
      confirmText: "Принять",
      firstDate:
          inDate ? DateTime.now() : DateTime.parse(inDateController.text),
      lastDate: inDate && outDateController.text.isNotEmpty
          ? DateTime.parse(outDateController.text)
          : DateTime(DateTime.now().year, DateTime.now().month + 2, 0),
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
