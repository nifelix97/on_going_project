import 'package:feli_app/utils/colors.dart';
import 'package:flutter/material.dart';



class MyhomePage extends StatefulWidget {
  const MyhomePage({super.key});

  @override
  State<MyhomePage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.AppColor,
      body: Stack(
        children: [
          Container(
        height: 250,
        padding: EdgeInsets.symmetric(horizontal: 70),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/desk5.jpeg'),
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            margin: const EdgeInsets.only(top: 50),

            height: 30,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: AppColors.textcolor),
            ),
            child: const TextField(
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.textcolor),
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(color: AppColors.textcolor,
                fontSize: 14
                ),
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: AppColors.textcolor,
                ),
              ),
            ),
          ),
        ),
      ),
      Positioned(
        top: 40,
        left: 20,
        child: 
        IconButton(
          onPressed: () {
           // Navigator.pop(context);
          },
          icon: const Icon(
            Icons.menu,
            color: AppColors.textcolor,
          ),
        ),
        ),
        Positioned(
          top: 40,
          right: 20,
          child: IconButton(
            onPressed: () {}, 
            icon: const Icon(
              Icons.person,
              color: AppColors.textcolor,
            ))
          )
   ] )
   );
  }
}