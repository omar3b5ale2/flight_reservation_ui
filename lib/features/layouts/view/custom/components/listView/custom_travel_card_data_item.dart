import 'package:first_day_100_ui_challenge_master/core/utils/helper/app_router.dart';
import 'package:first_day_100_ui_challenge_master/core/utils/helper/colors_helper.dart';
import 'package:first_day_100_ui_challenge_master/features/data/models/travel_model.dart';
import 'package:first_day_100_ui_challenge_master/features/layouts/view/custom/components/listView/custom_column_travel_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class TravelCardDataItem extends StatelessWidget {
  //this is the one item for the list view which will be displayed
  const TravelCardDataItem({super.key, required this.travelDataModel});
  //this is the data model which will inject the data in the item components
  final TravelDataModel travelDataModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          GoRouter.of(context)
              .push(AppRouter.ticketScreenDayOne, extra: travelDataModel);
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 140.0,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6.0),
                boxShadow: [
                  BoxShadow(
                    color: ColorsHelper.pinkColor.withOpacity(0.1),
                    blurRadius: 16.0,
                    blurStyle: BlurStyle.solid,
                  )
                ]),
            child: Row(
              children: [
                //this is the custom column of the travel card which will display the data of the travel, which injected by a travel model.
                CustomColumnCardTravel(
                    alignment: CrossAxisAlignment.start,
                    showLastLine: true,
                    travelDataModel: travelDataModel),
                const Spacer(),
                const Icon(
                  FontAwesomeIcons.arrowRightLong,
                  color: ColorsHelper.pinkyOrangeColor,
                ),
                const Spacer(),
                CustomColumnCardTravel(
                    alignment: CrossAxisAlignment.end,
                    showLastLine: true,
                    travelDataModel: travelDataModel),
              ],
            ),
          ),
        ));
  }
}
