import 'package:flutter/material.dart';

class Helpers {

  static double widthPercent(BuildContext context, double percent) => MediaQuery.of(context).size.width * (percent / 100); 

  static double heithPercent(BuildContext context, double percent) => MediaQuery.of(context).size.height * (percent / 100); 

}