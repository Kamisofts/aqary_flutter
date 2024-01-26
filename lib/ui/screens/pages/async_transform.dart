import 'dart:ui';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/blocs/numbers_bloc.dart';
import '../../../core/constants/const_colors.dart';
import '../../widgets/background_painter.dart';
import '../../widgets/custom_button.dart';

@RoutePage()
class AsyncTransformers extends StatefulWidget {
  const AsyncTransformers({super.key});

  @override
  State<AsyncTransformers> createState() => _AsyncTransformersState();
}

class _AsyncTransformersState extends State<AsyncTransformers>
    with SingleTickerProviderStateMixin {
  late AnimationController c;
  final NumbersBloc _numbersBloc = NumbersBloc();

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
            padding: EdgeInsets.all(3.w),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                      height: 40.h,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200.withOpacity(0.5),
                          borderRadius: BorderRadius.all(Radius.circular(5.w))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                child: Text(
                                  'Number',
                                  style: TextStyle(
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.w900,
                                      color: ConstColors.kPrimaryColor),
                                ),
                              ),
                              StreamBuilder<int>(
                                stream: _numbersBloc.numbersStream,
                                builder: (context, snapshot) {
                                  return Center(
                                    child: Text(
                                      '${snapshot.data ?? 0}',
                                      style: TextStyle(
                                          fontSize: 40.sp,
                                          fontWeight: FontWeight.w900,
                                          color: ConstColors.kPrimaryColor),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                          CustomButton(
                            isRed: true,
                            onPressed: () {
                              AutoRouter.of(context).pop();
                            },
                            text: 'Back',
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
