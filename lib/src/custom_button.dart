import 'package:flutter/material.dart';
import 'security.dart';

class CustomButton extends StatefulWidget {
  final Function? onPressed;
  final String buttonTextValue;
  final String buttonTextFont;
  final bool isButtonDisabled;

  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.buttonTextValue,
    required this.buttonTextFont,
    this.isButtonDisabled = false, // Default value is false
  }) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    if (!CustomFieldBoxSecurity.isValid) {
      return const Text(
        'Invalid or missing security key',
        style: TextStyle(color: Colors.red),
      );
    }
    return Opacity(
      opacity: widget.isButtonDisabled ? 0.6 : 1.0, // Reduce opacity when button is disabled
      child: InkWell(
        onTap:  () {
          if (widget.onPressed != null) {
            widget.onPressed!();
          }
        },
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
            color: Colors.transparent,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child: widget.isButtonDisabled
              ? const Center(
            child: SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                color: Colors.blue,
                strokeWidth: 2,
              ),
            ),
          )
              : Center(
            child: Text(
              widget.buttonTextValue,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontFamily: widget.buttonTextFont, // Ensure font family is set correctly
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
