import 'package:flutter/material.dart';
import './screens/input_page.dart';
import './screens/results_page.dart';
import './constants.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: kBackgroundColor,
        ),
        scaffoldBackgroundColor: kBackgroundColor,
        sliderTheme: SliderTheme.of(context).copyWith(
          trackHeight: 1,
          activeTrackColor: Color(0xFFFFFFFF),
          inactiveTickMarkColor: Color(0xFF8D8E98),
          thumbColor: Color(0xFFEB1555),
          overlayColor: Color(0x29EB1555),
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
        ),
      ),
      
      initialRoute: '/',
      routes: {
        '/': (context)=>InputPage(),
        '/results': (context)=>ResultsPage(),
      },
    );
  }
}
