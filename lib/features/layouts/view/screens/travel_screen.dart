import 'package:first_day_100_ui_challenge_master/core/utils/helper/colors_helper.dart';
import 'package:first_day_100_ui_challenge_master/features/layouts/view/custom/components/stack/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../custom/components/stack/custom_travel_card_listview.dart';

class ReservationScreenDayOne extends StatefulWidget {
  const ReservationScreenDayOne({super.key});

  @override
  State<ReservationScreenDayOne> createState() =>
      _ReservationScreenDayOneState();
}

class _ReservationScreenDayOneState extends State<ReservationScreenDayOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const CustomAppBar(),
        Expanded(
          child: Container(
            color: ColorsHelper.cWhite,
            child: const TabBarView(children: [
              CustomListViewSeparated(),
              CustomListViewSeparated(),
              CustomListViewSeparated(),
            ]),
          ),
        ),
      ],
    ));
  }
}
