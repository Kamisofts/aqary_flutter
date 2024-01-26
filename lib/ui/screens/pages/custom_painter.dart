import 'package:animations/animations.dart';
import 'package:aqary_flutter/core/blocs/painters_bloc.dart';
import 'package:aqary_flutter/ui/widgets/custom_button.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';

import '../../../core/utils/injections.dart';
import '../../widgets/background_painter.dart';

@RoutePage()
class CustomPainters extends StatefulWidget {
  const CustomPainters({super.key});

  @override
  State<CustomPainters> createState() => _CustomPaintersState();
}

class _CustomPaintersState extends State<CustomPainters>
    with SingleTickerProviderStateMixin {
  late AnimationController c;

  @override
  initState() {
    super.initState();
    c = AnimationController(vsync: this, duration: const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PaintersBloc, PaintersState>(
      listener: (context, state) {
        if(state.ini){
          c.reverse();
        }else{
          c.forward();
        }
      },
      child: BlocBuilder<PaintersBloc, PaintersState>(builder: (context, cp) {
        return Stack(
          children: [
            SizedBox.expand(
              child: CustomPaint(
                painter: BackgroundPainter(
                  animation: c,
                ),
              ),
            ),
            Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 800),
                child: ValueListenableBuilder<bool>(
                  valueListenable: cp.isInitial,
                  builder: (context, value, child) {
                    return SizedBox.expand(
                      child: PageTransitionSwitcher(
                        reverse: !value,
                        duration: const Duration(milliseconds: 1800),
                        transitionBuilder:
                            (child, animation, secondaryAnimation) {
                          return SharedAxisTransition(
                            animation: animation,
                            secondaryAnimation: secondaryAnimation,
                            transitionType: SharedAxisTransitionType.vertical,
                            fillColor: Colors.transparent,
                            child: child,
                          );
                        },
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomButton(
                                onPressed: () {
                                  sl<PaintersBloc>().add(ChangePainterEvent());
                                },
                                text: 'Change Custom Paints',
                              ),
                              CustomButton(
                                isRed: true,
                                onPressed: () {
                                 AutoRouter.of(context).pop();
                                },
                                text: 'Back',
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        );
      }),
    );
  }
}
