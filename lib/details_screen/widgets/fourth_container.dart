import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FourthContainer extends StatelessWidget {
  const FourthContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:30.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.px,),
        color: const Color.fromRGBO(90,97,105,1),
        boxShadow: [
          BoxShadow(
              color: Colors.black87.withOpacity(0.4),
              spreadRadius: 0.1,
              blurRadius: 10,
              blurStyle: BlurStyle.normal,
              offset: const Offset(-5, 3)
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Air conditioning',
              style: TextStyle(
                color: Colors.grey.shade300,
                fontSize: 20.px,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                const Image(
                  width: 50,
                  height: 50,
                  color: Colors.grey,
                  image: AssetImage(
                      'Assets/icons/fan.png'
                  ),
                ),
                SizedBox(width: 1.w,),
                Switch(value: false,
                  onChanged:(value) {},
                  trackColor: WidgetStatePropertyAll(Colors.black.withOpacity(0.5),),),
                SizedBox(width: 1.w,),
                Text('OFF',
                  style: TextStyle(
                    fontSize: 25.px,
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const Spacer(),
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Text('10',
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w800,
                          fontSize: 45.px
                      ),
                    ),
                    Icon(Icons.circle_outlined,color: Colors.grey.shade400,size: 10.px,)
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 0.9,
            width: double.infinity,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.ac_unit,color: Colors.grey.shade400,size: 30.px,),
                SizedBox(width: 3.w,),
                Image(
                  color: Colors.grey.shade400,
                  width: 40.px,
                  height: 40.px,
                  image: const AssetImage(
                    'Assets/icons/wind.png',
                  ),
                ),
                SizedBox(width: 3.w,),
                Icon(Icons.water_drop_outlined,color: Colors.grey.shade400,size: 30.px,),
                SizedBox(width: 3.w,),
                Icon(Icons.timer_sharp,color: Colors.orange.shade50,size: 35.px,)
              ],
            ),
          ),
          Container(
            height: 0.9,
            width: double.infinity,
            color: Colors.white,
          ),
          SizedBox(height: 1.h,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                  height: 7.h,
                  width: 35.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.px),
                      border: Border.all(color: Colors.grey.shade100,width: 10)
                  ),
                ),
                const Spacer(),
                Icon(Icons.water_drop_outlined,color: Colors.grey.shade400,size: 20.px,),
                Text('Air humidity',
                  style: TextStyle(
                      color: Colors.grey.shade400
                  ),
                ),
                SizedBox(width: 2.w,),
                Text('23%',
                  style: TextStyle(
                      color: Colors.grey.shade300,fontSize: 25.px,
                      fontWeight: FontWeight.w800
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
