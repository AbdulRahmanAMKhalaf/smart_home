import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smart_home/bloc/indecators_bloc.dart';
import 'package:smart_home/details_screen/details_Screen_view.dart';
import 'package:smart_home/models/home_model.dart';
import 'package:smart_home/models/indecators.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<IndecatorsBloc>();
    CarouselController controller = CarouselController();
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromRGBO(49, 56, 64, 0.99.px),
        /* gradient: LinearGradient(
            colors:[
              Color.fromRGBO(49, 56, 64, 0.99.px),
              Colors.grey.shade700,
              Colors.grey.shade600,
              Color.fromRGBO(49, 56, 64, 0.99.px),
            ],
          begin: Alignment.topCenter,
          end: Alignment.center,
        ),*/
      ),
      //rgb(49, 56, 64)
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 1.h,
          ),
          Text(
            'SELECT A ROOM',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white.withOpacity(0.4),
                fontWeight: FontWeight.w500,
                fontSize: 25.px),
          ),
          SizedBox(
            height: 3.h,
          ),
          CarouselSlider(
            carouselController: controller,
            items: List.generate(
              homeList.length,
                  (index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 4.2.w, vertical: 2.h),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreenView(index: index),
                        ),);
                    },
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.px),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 0.3.w,
                                  blurRadius: 4.w,
                                  offset: Offset(-1.1.w, 0.1.h)
                              ),
                            ],
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  homeList[index].image
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: RotatedBox(
                            quarterTurns: -1,
                            child: Text(homeList[index].name,
                              style: TextStyle(
                                color: Colors.grey.shade200,
                                shadows: [
                                  Shadow(
                                      color: Colors.black,
                                      blurRadius: 2.w
                                  ),
                                ],
                                fontSize: 65.px,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 5.w,
                          child: Container(
                            height: 0.7.h,
                            width: 42.w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.px)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            options: CarouselOptions(
              onPageChanged: (index, reason) {
               bloc.index=index;
                bloc.add(ChangeIndecoters());
              },
              autoPlay: true,
              autoPlayCurve: Curves.easeInOut,
              height: 62.h,
              initialPage: 0,
              viewportFraction: 0.85,
            ),),
          SizedBox(height: 3.h,),
          BlocProvider.value(
            value: bloc,
            child: BlocBuilder<IndecatorsBloc, IndecatorsState>(
              builder: (context, state) {
                return Indecators(value: bloc.index,);
              },
            ),
          ),
        ],
      ),
    );
  }
}
