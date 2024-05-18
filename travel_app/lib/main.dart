import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/cubit/app_cubit.dart';
import 'package:travel_app/cubit/app_cubit_logics.dart';
import 'package:travel_app/pages/data_services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "travelApp",
        debugShowCheckedModeBanner: false,
        home: BlocProvider<AppCubits>(
            create: (context) => AppCubits(data: DataServices()),
            child: const AppCubitLogic()));
  }
}
