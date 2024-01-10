import 'package:first_day_100_ui_challenge_master/core/utils/helper/styles_helper.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../data/models/travel_model.dart';

class CustomColumnCardTravel extends StatelessWidget {
  const CustomColumnCardTravel({
    super.key,
    required this.alignment,
    required this.travelDataModel,
    required this.showLastLine,
  });
  final alignment;
  final TravelDataModel travelDataModel;
  final bool showLastLine;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          alignment == CrossAxisAlignment.start
              ? travelDataModel.startingCityAbridgement
              : travelDataModel.destinationCityAbridgement,
          style: StyleHelper.textStyle22Colorful,
        ),
        Text(
          alignment == CrossAxisAlignment.start
              ? travelDataModel.startingCity
              : travelDataModel.destinationCity,
          style: StyleHelper.textStyle15Colorful,
        ),
        showLastLine
            ? Text(
                alignment == CrossAxisAlignment.start
                    ? travelDataModel.flightNumber
                    : DateFormat.MMMd().format(travelDataModel.date),
                style: StyleHelper.textStyle15Colorful,
              )
            : const Text(''),
      ],
    );
  }
}
