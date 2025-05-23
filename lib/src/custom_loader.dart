import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'security.dart';

class CustomLoader extends StatelessWidget{

  const CustomLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if (!CustomFieldBoxSecurity.isValid) {
      return const Text(
        'Invalid or missing security key',
        style: TextStyle(color: Colors.red),
      );
    }
    return const Padding(
        padding: EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          child: Center(
              child: SizedBox(
                width: 40,
                height: 40,
                child: LoadingIndicator(
                  indicatorType: Indicator.ballPulse,
                  colors: [
                    Colors.blue,
                  ],
                ),
              )
          ),
        )
    );
  }

}
