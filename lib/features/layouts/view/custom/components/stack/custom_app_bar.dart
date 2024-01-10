import 'package:first_day_100_ui_challenge_master/core/utils/helper/assets_helper.dart';
import 'package:first_day_100_ui_challenge_master/core/utils/helper/colors_helper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../toast/custom_toast.dart';

class CustomAppBar extends StatelessWidget {
  final calenderIcon = 'Calender';
  final menuIcon = 'menu';
  final magnifyingGlassIcon = 'magnifyingGlass';
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [ColorsHelper.pinkColor, ColorsHelper.pinkyOrangeColor],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [50.0, 50.0],
        tileMode: TileMode.repeated,
      )),
      child: AppBar(
        leading: GestureDetector(
          onTap: () {
            CustomToast.toastMassage(menuIcon);
          },
          child: Image.asset(AssetsHelper.menuIcon),
        ),
        actions: [
          IconButton(
            onPressed: () {
              CustomToast.toastMassage(calenderIcon);
            },
            icon: const Icon(
              Icons.calendar_today_outlined,
              color: Colors.white70,
            ),
          ),
          IconButton(
            onPressed: () {
              CustomToast.toastMassage(magnifyingGlassIcon);
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.white70,
            ),
          ),
        ],
        title: const Center(
          child: Text(
            '09 Jan 2024',
            style: TextStyle(color: Colors.white70),
          ),
        ),
      ),
    );
  }
}
