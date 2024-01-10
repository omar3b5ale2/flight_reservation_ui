import 'package:first_day_100_ui_challenge_master/features/data/providers/item_data_provider.dart';
import 'package:flutter/material.dart';

import '../listView/custom_travel_card_data_item.dart';

class CustomListViewSeparated extends StatelessWidget {
  const CustomListViewSeparated({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: ListView.separated(
          itemBuilder: (context, index) => TravelCardDataItem(
                travelDataModel: travelDataListForReservation[index],
              ),
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
                height: 18.0,
              ),
          itemCount: travelDataListForReservation.length),
    );
  }
}
