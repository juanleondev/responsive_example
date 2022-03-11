import 'package:flutter/material.dart';
import 'package:reponsive_talk/theme.dart';
import 'package:reponsive_talk/view/responsive_view.dart';

void main() {
  runApp(const _MyApp());
}

class _MyApp extends StatelessWidget {
  const _MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Here we can't use responsive builder package because it needs MediaQuery
    // and here this widget is parent of MaterialApp (contains MediaQuery)
    return LayoutBuilder(builder: ((_, constraints) {
      return MaterialApp(
          title: 'Responsive Talk',
          theme: constraints.maxWidth > 600
              ? PauloniaTheme.medium
              : PauloniaTheme.small,
          home: const ResponsiveView());
    }));
  }
}
