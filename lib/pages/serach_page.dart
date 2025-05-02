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
    return 
    
        Row(children: [
      Expanded(
        child: Container(
          padding:const EdgeInsets.all(16),
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: TextColor. withOpacity(0.4),
          ),
          child: Center(
            child: TextField(
              enabled: true,
              controller: serchcon,
              onSubmitted: (value) {
                BlocProvider.of<WeatherCubit>(context)
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
                      icon: const Icon(Icons.search)),
                  border: InputBorder.none),
            ),
          ),
        ),
      ),
    ]);
   
  }
}
