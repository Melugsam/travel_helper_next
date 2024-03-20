import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_helper_next/bloc/navigation/results/hotels/hotels_info_bloc.dart';
import 'package:travel_helper_next/bloc/navigation/search/alert_dialog_bloc.dart';

class DataTextField extends StatefulWidget {
  final String hintText;
  final int position;
  const DataTextField(
      {super.key, required this.hintText, required this.position});

  @override
  State<DataTextField> createState() => _DataTextFieldState();
}

class _DataTextFieldState extends State<DataTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: TextFormField(
        readOnly: true,
        onTap: () {
          selectDate(context, widget.position);
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
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: Color.fromRGBO(189, 193, 202, 1.0)),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 2),
          ),
        ),
      ),
    );
  }

  Future<void> selectDate(BuildContext context, int position) async {
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
      setState(() {
        BlocProvider.of<AlertDialogBloc>(context).add(ChangeDateValues(value: picked.toString(), position: position));
      });
    }
  }
}
