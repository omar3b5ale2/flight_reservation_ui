import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../../features/data/models/travel_model.dart';
import '../../../features/layouts/view/screens/ticket_screen.dart';
import '../../../features/layouts/view/screens/travel_screen.dart';
import '../../../features/layouts/view/screens/splash_screen.dart';

abstract class AppRouter {
  //configuring paths of screens for routing:
  static const splashScreenDayOne = '/SplashScreenDayOne';
  static const reservationScreenDayOne = '/ReservationScreenDayOne';
  static const ticketScreenDayOne = '/TicketScreenDayOne';
  static final router = GoRouter(routes: [
    GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreenDayOne(
              key: Key('splash'),
            )),
    GoRoute(
        path: reservationScreenDayOne,
        builder: (context, state) => const ReservationScreenDayOne(
              key: Key('home'),
            )),
    GoRoute(
      path: ticketScreenDayOne,
      builder: (context, state) => TicketScreenDayOne(
          key: const Key('ticket'),
          travelDataModel: state.extra as TravelDataModel),
    ),
  ]);
}
