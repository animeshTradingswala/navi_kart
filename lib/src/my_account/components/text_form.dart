import 'package:flutter/material.dart';

class FormApplication extends StatelessWidget {
  final TextEditingController? controller;
  final String labelText;
  final String? hintText;
  final bool? ifDone;
  final bool? isFixed;
  final String? initialValue;
  final int? maxLength;
  final int? maxLines;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool? iconVisible;
  final IconData? icon;

  const FormApplication({
    Key? key,
    this.controller,
    required this.labelText,
    this.hintText,
    required this.ifDone,
    this.isFixed,
    this.initialValue,
    this.maxLength,
    this.maxLines,
    this.keyboardType,
    required this.validator,
    this.iconVisible,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      maxLength: maxLength,
      maxLines: maxLines,
      enabled: isFixed == true ? false : true,
      controller: controller,
      textInputAction:
          ifDone == true ? TextInputAction.done : TextInputAction.next,
      validator: validator,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon: iconVisible == true
            ? Icon(
                icon,
                size: 25,
              )
            : null,
        labelStyle: TextStyle(
          fontWeight: FontWeight.w300,
          color: Colors.grey,
        ),
        labelText: labelText,
        floatingLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 18,
        ),
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(
            30,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(
            30,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(
            30,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(
            30,
          ),
        ),
        fillColor: Colors.grey,
      ),
    );
  }
}
