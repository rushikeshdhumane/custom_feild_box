library custom_field_box;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomFieldBox extends StatelessWidget {
  final String? label;
  final String? inputValue;
  final String? errorText;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final Iterable<String>? autofillHints;
  final List<TextInputFormatter>? inputFormatters;
  final int maxLines;
  final TextEditingController? controller;
  final bool readOnly;
  final void Function()? onTap;
  final String? initialValue;
  final AutovalidateMode? autovalidateMode;
  final TextCapitalization textCapitalization;

  const CustomFieldBox({
    Key? key,
    this.label,
    this.inputValue,
    this.onChanged,
    this.errorText,
    this.validator,
    this.suffixIcon,
    this.prefixIcon,
    this.initialValue,
    this.keyboardType,
    this.autofillHints,
    this.inputFormatters,
    this.obscureText = false,
    this.maxLines = 1,
    this.controller,
    this.readOnly = false,
    this.onTap,
    this.autovalidateMode,
    this.textCapitalization = TextCapitalization.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          Row(
            children: [
              Text(
                label!,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const Text(
                " *",
                style: TextStyle(
                    color: Colors.red,
                    
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          const SizedBox(height: 8),
        ],
        TextFormField(
          autovalidateMode: autovalidateMode,
          readOnly: readOnly,
          onTap: onTap,
          onChanged: onChanged,
          validator: validator,
          keyboardType: keyboardType,
          obscureText: obscureText,
          autofillHints: autofillHints,
          inputFormatters: inputFormatters,
          maxLines: maxLines,
          controller: controller,
          initialValue: controller == null ? initialValue : null,
          textCapitalization: textCapitalization,
          style: const TextStyle(color: Colors.black, fontSize: 15),
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            fillColor: Colors.transparent,
            filled: true,
            errorText: errorText,
            hintText: inputValue,
            hintStyle: const TextStyle(color: Colors.black, fontSize: 15),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 1.5),
              borderRadius: BorderRadius.circular(5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 1.5),
              borderRadius: BorderRadius.circular(5),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 1.5),
              borderRadius: BorderRadius.circular(5),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red.shade900, width: 1.5),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ],
    );
  }
}
