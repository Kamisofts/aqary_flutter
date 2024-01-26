import 'package:flutter/cupertino.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';

class BouncingStickyHeaderItem extends StatelessWidget {
final int index;
final int section;
  const BouncingStickyHeaderItem({super.key, required this.index, required this.section});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 80,
          color: Colors.white,
          padding: const EdgeInsets.only(left: 16),
          alignment: Alignment.centerLeft,
          child: Text(
            'Item #$section-$index',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        Divider(
          height: 1.0,
          thickness: 1.0,
          color: Colors.grey.shade200,
          indent: 16.0,
        ),
      ],
    );;
  }
}
