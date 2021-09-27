import 'package:flutter/material.dart';
import 'package:flutter_application/src/pages/animated_container.dart';

import '../alert_page.dart';
import '../avatar_page.dart';
import '../card_page.dart';
import '../home_page.dart';
import '../listview_page.dart';
import '../pulsation_calculated.dart';
import '../slider_page.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animated': (BuildContext context) =>AnimatedCointainerPage(),
    'calculated' : (BuildContext context)=>CalculatedPulsation(),
    'sliders': (BuildContext context) =>SliderPage(),
    'list': (BuildContext context) => ListPage(),
  };
}
