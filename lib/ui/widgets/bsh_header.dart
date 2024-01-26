import 'package:easy_sticky_header/easy_sticky_header.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';

import '../../core/constants/const_neumorphic.dart';

class BouncingStickyHeaderHeader extends StatelessWidget {
  final int index;
  const BouncingStickyHeaderHeader({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return StickyContainerWidget(
      index: index,
      child: Neumorphic(
        style: ConstNeumorphic.neumorphicStyle.copyWith(boxShape: NeumorphicBoxShape.roundRect(BorderRadius.zero),
        ),
        child: Container(
          padding: const EdgeInsets.only(left: 16.0),
          alignment: Alignment.centerLeft,
          width: double.infinity,
          height: 50,
          child: Text(
            'Header #$index',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
