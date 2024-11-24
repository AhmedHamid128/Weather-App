import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/colors.dart';
import 'package:weather_app/cubit/get_weather/get_cubit.dart';

class SerachPage extends StatefulWidget {
  const SerachPage({super.key});

  @override
  State<SerachPage> createState() => _SerachPageState();
}

class _SerachPageState extends State<SerachPage> {
  bool serached = true;

  @override
  Widget build(BuildContext context) {
    TextEditingController serchcon = TextEditingController();
    return //serached
        Row(children: [
      Expanded(
        child: Container(
          padding: EdgeInsets.all(16),
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Textcolor.withOpacity(0.4),
          ),
          child: Center(
            child: TextField(
              enabled: true,
              controller: serchcon,
              onSubmitted: (value) {
                BlocProvider.of<weatherCubit>(context)
                    .getweathercubit(loccubit: value);
              },
              decoration: InputDecoration(
                  hintText: 'Serach here',
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          serchcon == '';
                        });
                      },
                      icon: Icon(Icons.search)),
                  border: InputBorder.none),
            ),
          ),
        ),
      ),
    ]);
    /*
        : Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Textcolor,
            ),
            child: TextField(
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          serached = false;
                        
                        });
                      },
                      icon: Icon(Icons.cancel)),
                  hintText: 'Serach her',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
          );
          */
  }
}
