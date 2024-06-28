import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ThirdContainer extends StatelessWidget {
  const ThirdContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 18.h,
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
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text('Light intensity',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.px,
                    fontWeight: FontWeight.w900,

                  ),
                ),
                SizedBox(width: 10.w,),
                Text('20%',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.px,
                      fontWeight: FontWeight.w800
                  ),
                ),
                SizedBox(width: 5.w,),
                const Spacer(),
                Switch(value: true, onChanged: (value) {},trackColor: WidgetStatePropertyAll(Colors.black.withOpacity(0.5)),),
                SizedBox(width: 2.w,),
                Text('ON',
                  style: TextStyle(
                      color: Colors.orange.shade100,
                      fontSize: 20.px,
                      fontWeight: FontWeight.w800
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.h,),
          Container(
            width: double.infinity,
            height: 0.8,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(Icons.sunny,color: Colors.grey.shade400,size: 27.px,),
                Expanded(
                  child: Slider(
                    divisions: 3,
                    value: 50,
                    onChanged: (value) {},
                    label: 'Brightness',
                    activeColor: Colors.orange.shade100,
                    max: 100,
                    min: 0,
                    inactiveColor: Colors.black.withOpacity(0.5),
                    thumbColor: Colors.orange.shade100,
                  ),
                ),
                Icon(Icons.sunny,color: Colors.grey.shade400,size: 27.px,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
