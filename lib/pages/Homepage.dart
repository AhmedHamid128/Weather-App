import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather/get_cubit.dart';
import 'package:weather_app/cubit/get_weather/get_state.dart';
import 'package:weather_app/pages/Erroer_page.dart';
import 'package:weather_app/pages/Loading_.dart';
import 'package:weather_app/pages/body_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
 
  @override
  void initState() {
    super.initState();
    // defulat loucation
    BlocProvider.of< WeatherCubit>(context).getweathercubit(loccubit: 'Egypt');

  }


  @override
  Widget build(BuildContext context) {
    return
        
        BlocBuilder< WeatherCubit,WeatherState>(
      builder: (context, State) {
        if (State is Loadingweather) {
          return const Loading_weather();
        } else if (State is Successweather) {
          return const BodyPage();
        } else {
          return  const ErroerPage();
        }
      },
    );
   
  }
}
