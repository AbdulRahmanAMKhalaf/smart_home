import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SecondContainer extends StatelessWidget {
  const SecondContainer({super.key});

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
                Row(
                  children: [
                    Text('Music',
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 20.px,
                          fontWeight: FontWeight.w900
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.launch_outlined,color: Colors.white54,)
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.music_note,color: Colors.white54,size: 30.px,),
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
          Container(width: double.infinity,color: Colors.white54,height: 0.8,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('I wanna be you ...',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 20.px,
                      fontWeight: FontWeight.w900
                  ),
                ),
                Text('MANESKIN',
                  style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 10.px,
                      fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(height: 0.5.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      width: 6.w,
                      height: 2.h,
                      image:const AssetImage(
                          'Assets/icons/back.png'
                      ),
                    ),
                    SizedBox(width: 3.w,),
                    Icon(Icons.play_arrow_rounded,color: Colors.white54,size: 30.px,),
                    SizedBox(width: 3.w,),
                    Image(
                      width: 6.w,
                      height: 3.h,
                      image:const AssetImage(
                          'Assets/icons/right.png'
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
