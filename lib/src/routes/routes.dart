import 'package:flutter/material.dart';

import '../pages/alert_page.dart';
import '../pages/animated_container.dart';
import '../pages/avatar_page.dart';
import '../pages/home_page.dart';
import '../pages/card_page.dart';
import 'package:componentes/src/pages/input_page.dart';


Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => const HomePage(),
    'alert': (BuildContext context) => const AlertPage(),
    'avatar': (BuildContext context) => const AvatarPage(),
    'card' : (BuildContext context  ) => const CardPage(),
    'animatedContainer' : (BuildContext context  ) => const AnimatedContainerPage(),
    'inputs' : (BuildContext context) => const InputPage(), 
    
  };
}
