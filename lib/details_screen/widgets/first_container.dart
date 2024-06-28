import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FirstContainer extends StatelessWidget {
  const FirstContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.h,
      width: 43.w,
      //rgb(90, 97, 105)
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
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Lights',
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 20.px,
                      fontWeight: FontWeight.w900
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.lightbulb_outline_rounded,color: Colors.white54,size: 30.px,),
                    const Spacer(),
                    Switch(value: true, onChanged: (value) {},inactiveTrackColor: Colors.black87,trackColor: WidgetStatePropertyAll(Colors.black87.withOpacity(0.6)),trackOutlineColor: const WidgetStatePropertyAll(Colors.black87),),
                    const Spacer(),
                    Text('ON',
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 23.px,
                          color: Colors.orange.shade100
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(width: double.infinity,color: Colors.white54,height: 0.8,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Timer',
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 20.px,
                      fontWeight: FontWeight.w900
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.timer_off_outlined,color: Colors.white54,size: 30.px,),
                    const Spacer(),
                    Switch(value: false, onChanged: (value) {},inactiveTrackColor: Colors.black87,trackColor: WidgetStatePropertyAll(Colors.black87.withOpacity(0.6)),trackOutlineColor: const WidgetStatePropertyAll(Colors.black87),),
                    const Spacer(),
                    Text('OFF',
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 23.px,
                          color: Colors.grey.shade500
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
