import 'package:advanced_project/core/helper/extension.dart';
import 'package:flutter/material.dart';

import '../../../core/routing/routes.dart';
import '../../../core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context)  {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.black),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(const Size(double.infinity, 50)),
        shape: MaterialStateProperty.all( RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        ))
      ), // ButtonStyle
      child: Text(
        'Get Started',
        style: TextStyles.font16WhiteSemiBold,
      ), // Text
    ); // TextButton

  }
}
