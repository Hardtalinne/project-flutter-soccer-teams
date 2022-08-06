import 'package:flutter/material.dart';
import 'package:project_app/ui/theme/theme.dart';
import 'package:project_app/ui/ui.dart';

void main() {
  runApp(MaterialApp(
    home: const HomePage(),
    title: 'Time de Futebol',
    theme: createAppTheme(),
    debugShowCheckedModeBanner: false,
  ));
}
