import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
    bool isDrag=false;
    CarouselController controller = CarouselController();
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromRGBO(49, 56, 64, 0.99.px),
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
                  /*  onVerticalDragStart: (details) {
                     isDrag=true;
                     print('object statr');
                    },
                    onVerticalDragEnd: (details) {
                      isDrag=true;
                      print('object end');
                    },
                    onVerticalDragUpdate: (details) {
                      isDrag=true;
                      print('object update');
                    },
                    onVerticalDragDown: (details) {
                      isDrag=true;
                      print('object down');
                    },
                    onVerticalDragCancel: () {
                      isDrag=true;
                      print('object');
                    },*/
                    onLongPress: () {
                      bloc.add(_DragItem);
                    },
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreenView(index: index).animate().slideY(curve: Curves.easeInOut,duration: 1200.ms,begin: -0.3,end: 0).fadeIn(),
                        ),);
                    },
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        isDrag?Container(
                          width: double.infinity,
                          height: 30.h,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20.px)
                          ),
                        ).animate(onPlay: (controller) => controller.forward(),target: isDrag?1:0).slideY(begin: 0,end: 0.2,duration: 700.ms,curve: Curves.easeInOut):Container(
                          width: double.infinity,
                          height: 30.h,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(20.px)
                          ),
                        ),
                        isDrag?Container(
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
                        ).animate(onPlay: (controller) => controller.forward(),target: isDrag?1:0).slideY(duration: 700.ms,begin: 0,end: -0.2,curve: Curves.easeInOut):Container(
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
                        Padding(
                          padding:  EdgeInsets.only(bottom: 35.0.px),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image(
                                 image:const AssetImage(
                                   'Assets/icons/upload.png',
                                 ),
                               color: Colors.grey,
                               height:15.px,
                               width: 15.px,
                             ),
                              Image(
                                image:const AssetImage(
                                  'Assets/icons/upload.png',
                                ),
                                color: Colors.grey,
                                height:15.px,
                                width: 15.px,
                              ),
                              Image(
                                image:const AssetImage(
                                  'Assets/icons/upload.png',
                                ),
                                color: Colors.grey,
                                height:15.px,
                                width: 15.px,
                              ),
                            ],
                          ),
                        ).animate(onPlay: (controller) => controller.repeat(reverse: true),).shimmer(curve: Curves.easeInOut,duration: 1500.ms,color: Colors.white),
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
              autoPlay: false,
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
