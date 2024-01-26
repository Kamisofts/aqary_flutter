import 'dart:ui';

import 'package:aqary_flutter/core/blocs/api/api_call_bloc.dart';
import 'package:aqary_flutter/ui/widgets/custom_button.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/constants/const_colors.dart';
import '../../widgets/background_painter.dart';


@RoutePage()
class MakeApiCall extends StatefulWidget {
  const MakeApiCall({super.key});

  @override
  State<MakeApiCall> createState() => _MakeApiCallState();
}

class _MakeApiCallState extends State<MakeApiCall>
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
    return BlocBuilder<ApiCallBloc, ApiCallState>(
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
                          height: 50.h,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200.withOpacity(0.5),
                              borderRadius:
                              BorderRadius.all(Radius.circular(5.w))),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(
                                    'If Api Fails it will try it for 3 times',
                                    style: TextStyle(
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.normal,
                                        color: ConstColors.kPrimaryColor),
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.all(10.sp),
                                  child: BlocBuilder<ApiCallBloc, ApiCallState>(
                                    builder: (context, state) {
                                      if (state is LoadingState) {
                                        return const CircularProgressIndicator();
                                      } else if (state is SuccessState) {
                                        return Text('Data: ${state.data}');
                                      } else if (state is ErrorState) {
                                        return Text('Error: ${state.error}');
                                      } else {
                                        return Container(); // Placeholder for other states
                                      }
                                    },
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                CustomButton(
                                  onPressed: () {
                                    context.read<ApiCallBloc>().add(FetchDataEvent());
                                  },
                                  text: 'Make API Call',
                                ),
                              ],
                            ),
                          )),
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
}
