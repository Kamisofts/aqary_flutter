import 'package:aqary_flutter/core/routes/routes_import.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            onPressed: () {
              AutoRouter.of(context).push(const FlutterPatternsRoute());
            },
            text: 'Flutter Patterns',
          ),
          CustomButton(
            onPressed: () {
              AutoRouter.of(context).push(const CustomPaintersRoute());
            },
            text: 'Custom Painter',
          ),
          CustomButton(
            onPressed: () {},
            text: '',
          ),
          CustomButton(
            onPressed: () {},
            text: '',
          ),
        ],
      ),
    );
  }
}
