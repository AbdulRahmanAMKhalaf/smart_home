import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smart_home/bloc/indecators_bloc.dart';
import 'package:smart_home/home_screen/home_screen_content.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey.shade500,
        selectedItemColor: Colors.grey.shade500,
        items: [
          BottomNavigationBarItem(
            label: 'UNLOCK',
            icon: Icon(
              Icons.lock_sharp, color: Colors.grey.shade600, size: 50.px,),
          ),
          BottomNavigationBarItem(
            label: 'MAIN',
            icon: Icon(
              Icons.home_outlined, color: Colors.grey.shade600, size: 50.px,),
          ),
          BottomNavigationBarItem(
            label: 'SETTINGS',
            icon: Icon(Icons.settings_outlined, color: Colors.grey.shade600,
              size: 50.px,),
          ),
        ],
        backgroundColor: Color.fromRGBO(49, 56, 64, 0.99.px),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(49, 56, 64, 0.99.px),
        leading: IconButton(
          onPressed: () {},
          style: const ButtonStyle(
              splashFactory: NoSplash.splashFactory
          ),
          icon: const Icon(Icons.menu_rounded),
          color: Colors.white.withOpacity(0.5),
          iconSize: 35.px,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 2.w),
            child: IconButton(
              onPressed: () {},
              style: const ButtonStyle(
                  splashFactory: NoSplash.splashFactory
              ),
              icon: const Icon(Icons.search),
              color: Colors.white.withOpacity(0.5),
              iconSize: 35.px,
            ),
          ),
        ],
      ),
      body:  SafeArea(child: BlocProvider(
        create: (context) => IndecatorsBloc(),
        child: const HomeScreenContent(),
      )),
    );
  }
}
