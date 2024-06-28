import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smart_home/models/home_model.dart';

class Header extends StatelessWidget {
  const Header({super.key,required this.index});
final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton.filledTonal(
            onPressed:(){},
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.black.withOpacity(0.04))
            ),
            icon:Icon(Icons.menu_rounded,color: Colors.grey.shade500,size: 25.px,)),
        const Spacer(),
        Text(homeList[index].name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 45.px,

          ),
        ),
        const Spacer(),
        IconButton.filledTonal(
            onPressed:(){},
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.black.withOpacity(0.04))
            ),
            icon:Icon(Icons.search,color: Colors.grey.shade500,size: 25.px,)),
      ],
    );
  }
}
