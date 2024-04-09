import 'package:feli_app/utils/colors.dart';
import 'package:feli_app/widgets/elevatedbutton.dart';
import 'package:flutter/material.dart';


class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LogoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.AppColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Image(
              image: AssetImage('assets/images/felil ogo.jpeg'),
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 100),
            MyElevatedButton(
              context,
              40.0,
              'Get Started',
              () {
                Navigator.pushNamed(context, '/homepage');
              },
              false,
            ),
          ],
        ),
      )
    );
  }
}