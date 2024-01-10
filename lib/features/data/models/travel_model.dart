class TravelDataModel {
  final String startingCity;
  final String startingCityAbridgement;
  final String destinationCity;
  final String destinationCityAbridgement;
  final String flightNumber;
  final String passengerName;
  final String seatNumber;
  final DateTime date;
  final String gate;
  final String travelType;

  TravelDataModel({
    required this.startingCity,
    required this.startingCityAbridgement,
    required this.destinationCity,
    required this.destinationCityAbridgement,
    required this.flightNumber,
    required this.passengerName,
    required this.seatNumber,
    required this.date,
    required this.gate,
    required this.travelType,
  });

  factory TravelDataModel.fromJson(Map<String, dynamic> json) =>
      TravelDataModel(
        startingCity: json['startCity'],
        startingCityAbridgement: json['startCityAbridgement'],
        destinationCity: json['endCity'],
        destinationCityAbridgement: json['endCityAbridgement'],
        flightNumber: json['flightNumber'],
        passengerName: json['passengerName'],
        seatNumber: json['seatNumber'],
        date: DateTime.parse(json['date']),
        gate: json['gate'],
        travelType: json['travelType'],
      );
}
