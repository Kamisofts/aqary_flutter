import 'dart:ui';

import 'package:aqary_flutter/core/blocs/steps/steps_bloc.dart';
import 'package:aqary_flutter/core/constants/const_colors.dart';
import 'package:aqary_flutter/core/routes/routes_import.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../core/utils/injections.dart';
import '../widgets/background_painter.dart';
import '../widgets/custom_button.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController c;

  @override
  initState() {
    super.initState();
    c = AnimationController(vsync: this, duration: const Duration(seconds: 30));
    c.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.kPrimaryColor,
      body: Stack(
        children: [
          SizedBox.expand(
            child: CustomPaint(
              painter: BackgroundPainter(
                animation: c,
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.all(3.w),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(

                    height: 50.h,
                    decoration: BoxDecoration(
                color: Colors.grey.shade200.withOpacity(0.5),
                        borderRadius: BorderRadius.all(Radius.circular(5.w))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          onPressed: () {
                            AutoRouter.of(context)
                                .push(const FlutterPatternsRoute());
                          },
                          text: 'Flutter Patterns',
                        ),
                        CustomButton(
                          onPressed: () {
                            sl<StepsBloc>().add(const ChangeStepEvent(steps: 1));
                            AutoRouter.of(context)
                                .push(const CustomPaintersRoute());
                          },
                          text: 'Custom Painter',
                        ),
                        CustomButton(
                          onPressed: () {
                            AutoRouter.of(context)
                                .push(const StickyHeaderPageRoute());
                          },
                          text: 'Bouncing Sticky Header',
                        ),
                        CustomButton(
                          onPressed: () {
                            AutoRouter.of(context).push(const MakeApiCallRoute());
                          },
                          text: 'Make API Call',
                        ),
                        CustomButton(
                          onPressed: () {
                            AutoRouter.of(context).push(const AsyncTransformersRoute());
                          },
                          text: 'Async Transformer',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
