import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smart_home/details_screen/widgets/first_container.dart';
import 'package:smart_home/details_screen/widgets/fourth_container.dart';
import 'package:smart_home/details_screen/widgets/header.dart';
import 'package:smart_home/details_screen/widgets/second_container.dart';
import 'package:smart_home/details_screen/widgets/third_container.dart';
import 'package:smart_home/models/home_model.dart';

class DetailsScreenContent extends StatelessWidget {
  const DetailsScreenContent({super.key,required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        ImageFiltered(
            imageFilter:ImageFilter.blur(sigmaX: 3,sigmaY:3),
          child: Image(
            fit: BoxFit.cover,
            image:AssetImage(
                homeList[index].image
            ),
          ),
        ),
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(86, 82, 79, 0.8),
              ),
            ],
          ),
        ),
        SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 3.w,),
            children: [
              Header(index: index),
              SizedBox(height: 1.h,),
              Text('SETTINGS',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.px,
                height: -0.012.h
              ),
              ),
              SizedBox(height: 2.h,),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios_new_outlined,color: Colors.grey.shade300,size: 20.px,),
                    SizedBox(width: 2.w,),
                    Text('BACK',
                    style: TextStyle(
                      color: Colors.grey.shade300,
                      fontSize: 20.px,
                      fontWeight: FontWeight.w800
                    ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2.h,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 FirstContainer(),
                  Spacer(),
                  SecondContainer()
                ],
              ),
              SizedBox(height: 2.h,),
              const ThirdContainer(),
              SizedBox(height: 2.h,),
              const FourthContainer(),
            ],
          ),
        ),
      ],
    );
  }
}
