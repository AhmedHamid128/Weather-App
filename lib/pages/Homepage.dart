import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather/get_cubit.dart';
import 'package:weather_app/cubit/get_weather/get_state.dart';
import 'package:weather_app/model/weather_json_dart_model.dart';
import 'package:weather_app/pages/Erroer_page.dart';
import 'package:weather_app/pages/Loading_.dart';
import 'package:weather_app/pages/body_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Weather? w;
  @override
  void initState() {
    super.initState();
    BlocProvider.of<weatherCubit>(context).getweathercubit(loccubit: 'Egypt');
    // getdata();
  }

/*
  void getdata() async {
    w = await WeatherDioModel().getHttp(loc: 'Syria');
  }
*/
  @override
  Widget build(BuildContext context) {
    return
        /*Scaffold(
       resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      backgroundColor: kbackcolor,
      appBar: AppBar(
        backgroundColor: kbackcolor,
        title: Text(
          'country',
          style: TextStyle(color: Textcolor),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SerachPage(),
            Spacer(),
            */
        BlocBuilder<weatherCubit, weatherState>(
      builder: (context, State) {
        if (State is Loadingweather) {
          return Loading_weather();
        } else if (State is Successweather) {
          return BodyPage();
        } else {
          return ErroerPage();
        }
      },
    );
    /* Spacer(),
            // ErroerPage(),
            // Loading_weather(),
            //Spacer(),
            //BodyPage(),
          ],
        ),
      ),
    );*/
  }
}
