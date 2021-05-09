import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';
import 'otp_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text(
                "Verificacion",
                style: headingStyle,
              ),
              Text("Enviamos su código al +1898860 ***"),
              buildTimer(),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              GestureDetector(
                onTap: () {
                  // OTP codigo recibido
                },
                child: Text(
                  "Reenviar codigo de seguridad",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Este código caducará en "),
        TweenAnimationBuilder(
          tween: Tween(begin: 50.0, end: 0.0),
          duration: Duration(seconds: 50),
          builder: (_, value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
