import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/constants/const_colors.dart';
import '../../core/constants/const_neumorphic.dart';




class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final bool? isOutlined;
  final double? hh;
  final double? ww;
  final bool isRed;
  final String text;

  const CustomButton(
      {super.key,
      required this.onPressed,
      this.hh,
      this.ww,
      required this.text,
      this.isOutlined,  this.isRed=false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1.h,horizontal: 10.w),
      height: hh ?? 6.h,
      width: ww ?? 100.w,
      child: NeumorphicButton(
        onPressed: onPressed,
        style:isRed?ConstNeumorphic.neumorphicStyle.copyWith(color: Colors.redAccent):ConstNeumorphic.neumorphicStyle,
        child: Center(
          child: NeumorphicText(
            text,
            style: ConstNeumorphic.neumorphicBtnStyle
                .copyWith(color: ConstColors.kWhite),
            textStyle: NeumorphicTextStyle(
                fontSize: 16.sp, fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }
}
