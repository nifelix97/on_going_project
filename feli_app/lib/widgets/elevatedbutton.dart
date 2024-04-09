import 'package:feli_app/utils/colors.dart';
import 'package:flutter/material.dart';

Widget MyElevatedButton(BuildContext context, height, text, click, isloading) {
  return SizedBox(
      height: 40.0,
      // width: width,
      child: ElevatedButton(
        onPressed: () {
          click();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        child: isloading
            ? CircularProgressIndicator(
                color: AppColors.primaryColor,
              )
            : Text(
                text,
                style: TextStyle(
                  color: AppColors.textcolor,
                  fontSize: 20,
                ).copyWith(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                ),
              ),
      ));
}
