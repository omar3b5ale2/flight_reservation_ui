import 'package:first_day_100_ui_challenge_master/core/utils/helper/assets_helper.dart';
import 'package:first_day_100_ui_challenge_master/core/utils/helper/colors_helper.dart';
import 'package:first_day_100_ui_challenge_master/features/layouts/view/custom/components/toast/custom_toast.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final trainIcon = 'Train';
  final busIcon = 'Bus';
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: (MediaQuery.of(context).size.height) * 0.1,
        margin: EdgeInsets.only(
            top: (MediaQuery.of(context).size.height) * 0.14,
            left: 16.0,
            right: 16.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6.0),
            boxShadow: [
              BoxShadow(
                color: ColorsHelper.pinkColor.withOpacity(0.1),
                blurRadius: 16,
                blurStyle: BlurStyle.solid,
              )
            ]),
        child: TabBar(
            dividerColor: Colors.transparent,
            labelColor: ColorsHelper.pinkyOrangeColor,
            indicatorColor: ColorsHelper.orangeColor,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            indicatorWeight: 3,
            tabs: [
              DayOneCustomTab(
                icon: GestureDetector(
                  child: const ImageIcon(
                    AssetImage(AssetsHelper.trainIcon),
                  ),
                  onTap: () {
                    CustomToast.toastMassage(trainIcon);
                  },
                ),
                text: 'Train',
              ),
              const DayOneCustomTab(
                icon: ImageIcon(
                  AssetImage(AssetsHelper.flyingIcon),
                  size: 50.0,
                ),
                text: 'AirPlane',
              ),
              DayOneCustomTab(
                icon: GestureDetector(
                  child: const ImageIcon(
                    AssetImage(AssetsHelper.busIcon),
                  ),
                  onTap: () {
                    CustomToast.toastMassage(busIcon);
                  },
                ),
                text: 'Bus',
              ),
            ]));
  }
}

class CustomTabElement extends StatelessWidget {
  const CustomTabElement({super.key, required this.icon, required this.text});
  final dynamic icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: icon.runtimeType == IconData
          ? Icon(
              icon,
              size: 40,
            )
          : icon,
      text: text,
      iconMargin: EdgeInsets.zero,
    );
  }
}

class DayOneCustomTab extends StatelessWidget {
  const DayOneCustomTab({super.key, required this.icon, required this.text});
  final dynamic icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Tab(
        icon: icon.runtimeType == IconData
            ? Icon(
                icon,
                size: 40,
              )
            : icon,
        text: text,
        iconMargin: EdgeInsets.zero);
  }
}
