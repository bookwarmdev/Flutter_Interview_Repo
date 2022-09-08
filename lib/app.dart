import 'package:flutter/material.dart';
import 'package:lox_corporate_services/controller/provider/provider.dart';
 import 'package:provider/provider.dart';
import 'presentation/routers/router.gr.dart' as route;

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRouter = route.AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SearchProvider()),
        ChangeNotifierProvider(create: (context) => AppointmentListProvider()),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
