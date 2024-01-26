import 'dart:ui';

import 'package:aqary_flutter/core/blocs/steps/steps_bloc.dart';
import 'package:aqary_flutter/core/routes/routes_import.gr.dart';
import 'package:aqary_flutter/ui/widgets/custom_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../core/constants/const_colors.dart';
import '../../../core/models/person_model.dart';
import '../../../core/utils/injections.dart';
import '../../widgets/background_painter.dart';

@RoutePage()
class FlutterPatterns extends StatefulWidget {
  const FlutterPatterns({super.key});

  @override
  State<FlutterPatterns> createState() => _FlutterPatternsState();
}

class _FlutterPatternsState extends State<FlutterPatterns>
    with SingleTickerProviderStateMixin {
  late AnimationController c;
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  initState() {
    super.initState();
    c = AnimationController(vsync: this, duration: const Duration(seconds: 30));
    c.forward();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StepsBloc, StepsState>(
      builder: (context, state) {
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.w))),
                          child: buildSteps(state)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Padding buildSteps(StepsState state) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Step: ${state.steps.toString()}",
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w900,
                  color: ConstColors.kPrimaryColor),
            ),
          ),
          TextField(
            controller: state.steps == 1
                ? _firstNameController
                : state.steps == 2
                    ? _lastNameController
                    : _emailController,
            decoration: InputDecoration(
                labelText: state.steps == 1
                    ? 'First Name'
                    : state.steps == 2
                        ? "Last Name"
                        : "Email"),
          ),
          const SizedBox(height: 16.0),
          CustomButton(
            onPressed: () {
              UserBuilder userB = state.steps == 1
                  ? state.userBuilder.withFirstName(_firstNameController.text)
                  : state.steps == 2
                      ? state.userBuilder.withLastName(_lastNameController.text)
                      : state.userBuilder.withEmail(_emailController.text);
              sl<StepsBloc>().add(UserBuilderEvent(userBuilder: userB));
              sl<StepsBloc>().add(ChangeStepEvent(
                  steps: state.steps == 1
                      ? 2
                      : state.steps == 2
                          ? 3
                          : 1));
              if(state.steps==3){
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title:  Text('User Information',style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w900,
                        color: ConstColors.kPrimaryColor),),
                    content: Text(
                        'Name: ${userB.firstName} ${userB.lastName}\nEmail: ${userB.email}',style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w900,
                        color: ConstColors.kPrimaryColor),),
                    actions: [
                      CustomButton(
                        onPressed: () {
                          AutoRouter.of(context).replaceAll([const HomePageRoute()]);

                        },
                        text: "OK",
                      ),
                    ],
                  ),
                );
              }
            },
            text: state.steps == 3 ? "Submit" : "Next",
          ),
        ],
      ),
    );
  }
}
