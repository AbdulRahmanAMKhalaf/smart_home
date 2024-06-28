import 'package:flutter/material.dart';
import 'package:smart_home/details_screen/details_screen_content.dart';

class DetailsScreenView extends StatelessWidget {
  const DetailsScreenView({super.key,required this.index});
final int index;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black87.withOpacity(0.4),
      body: DetailsScreenContent(index: index,),
    );
  }
}
