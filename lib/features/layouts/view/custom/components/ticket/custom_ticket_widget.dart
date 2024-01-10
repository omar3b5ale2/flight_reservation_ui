import 'package:barcode_widget/barcode_widget.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:ui_challenge/core/utils/helper/color_helper.dart';
import 'package:ui_challenge/core/utils/helper/style_helper.dart';

import '../../../data/models/travel_data_model.dart';
import 'day_one_ticket_cliper.dart';

class DayOneTicketWidget extends StatelessWidget {
  const DayOneTicketWidget({
    super.key,
    required this.travelDataModel,
  });

  final TravelDataModel travelDataModel;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ChallengeTicketClipper(right: 150, holeRadius: 35),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          color: Color(0xfffee8f5),
        ),
        width: MediaQuery.of(context).size.width,
        height: 580,
        child: Column(
          children: [
            TicketTitleWidget(travelDataModel: travelDataModel),
            DottedLine(
              dashColor: Colors.grey.withOpacity(0.7),
              dashLength: 5,
            ),
            SizedBox(
              height: 24,
            ),
            TicketDataLine(travelDataModel: travelDataModel,
            rTitle: 'Passenger',
              lTitle: 'Seat',
              lData: travelDataModel.seatNumber,
              rData: travelDataModel.passengerName,
            ),
            SizedBox(
              height: 20,
            ),
            TicketDataLine(travelDataModel: travelDataModel,
              rTitle: 'Date',
              lTitle: 'Time',
              rData:DateFormat.yMMMd().format(travelDataModel.date),
              lData: DateFormat.Hm().format(travelDataModel.date),
            ),
            SizedBox(
              height: 20,
            ),
            TicketDataLine(travelDataModel: travelDataModel,
              rTitle: 'Flight',
              lTitle: 'Gate',
              lData: travelDataModel.gate,
              rData: travelDataModel.flightNumber,
            ),
            SizedBox(
              height: 50,
            ),
            DottedLine(
              dashColor: Colors.grey.withOpacity(0.7),
              dashLength: 5,
            ),
            SizedBox(
              height: 50,
            ),
            BarcodeWidget(
              barcode: Barcode.gs128(),
              data: 'https://www.linkedin.com/in/abdalla-hannora/',
              width: 250,
              height: 70,
            )
          ],
        ),
      ),
    );
  }
}

class TicketDataLine extends StatelessWidget {
  const TicketDataLine({
    super.key,
    required this.travelDataModel, required this.rTitle, required this.lTitle, required this.rData, required this.lData,
  });

  final TravelDataModel travelDataModel;
  final String rTitle,lTitle, rData,lData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        TicketDataElement(travelDataModel: travelDataModel, alignment: CrossAxisAlignment.start, title: rTitle, data: rData),
          TicketDataElement(travelDataModel: travelDataModel, alignment: CrossAxisAlignment.end, title: lTitle, data: lData)
      ],),
    );
  }
}

class TicketTitleWidget extends StatelessWidget {
  const TicketTitleWidget({
    super.key,
    required this.travelDataModel,
  });

  final TravelDataModel travelDataModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0,vertical: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TicketTitleElement(travelDataModel: travelDataModel,alignment:CrossAxisAlignment.start),
          const Spacer(),
          const Icon(
            FontAwesomeIcons.arrowRightLong,
            color: ChallengeColorHelper.cPinkyOrangeColor,
            size: 26,
          ),
          const Spacer(),
          TicketTitleElement(travelDataModel: travelDataModel,alignment:CrossAxisAlignment.end),
        ],
      ),
    );
  }
}

class TicketTitleElement extends StatelessWidget {
  const TicketTitleElement({
    super.key,
    required this.travelDataModel, required this.alignment,
  });

  final TravelDataModel travelDataModel;
  final CrossAxisAlignment alignment;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          alignment == CrossAxisAlignment.start?travelDataModel.startCityAbbrev:travelDataModel.destinationCityAbbrev,
          style: ChallengeStyleHelper.textStyle22CPinkyOrange
              .copyWith(fontSize: 26),
        ),
        Text(
          alignment == CrossAxisAlignment.start?travelDataModel.startCity:travelDataModel.destinationCity,
          style: ChallengeStyleHelper.textStyle15CDarkPinkyOrange
              .copyWith(fontSize: 18.0),
        )
      ],
    );
  }
}

class TicketDataElement extends StatelessWidget {
  const TicketDataElement({
    super.key,
    required this.travelDataModel, required this.alignment, required this.title, required this.data,
  });

  final TravelDataModel travelDataModel;
  final CrossAxisAlignment alignment;
  final String title,data ;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          title,
          style: ChallengeStyleHelper.textStyle15CDarkPinkyOrange
        .copyWith(fontSize: 18.0,color: ChallengeColorHelper.cPinkyOrangeColor.withOpacity(0.6)),
        ),
        Text(
data,
        style: ChallengeStyleHelper.textStyle15CDarkPinkyOrange.copyWith(color: ChallengeColorHelper.cDeepDarkPinkyOrangeColor,fontSize: 22)
        )
      ],
    );
  }
}
