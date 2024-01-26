import 'package:auto_route/annotations.dart';
import 'package:easy_sticky_header/easy_sticky_header.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:flutter/material.dart';

import '../../widgets/bsh_header.dart';
import '../../widgets/bsh_item.dart';

@RoutePage()
class StickyHeaderPage extends StatelessWidget {
  const StickyHeaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.black,
        title: const Text('SingleChildScrollView'),
      ),
      body: const StickyHeader(
        child: SingleChildScrollView(

          physics: AlwaysScrollableScrollPhysics(
              parent: BouncingScrollPhysics()),
          child: Column(
            children: <Widget>[
              BouncingStickyHeaderHeader( index: 0,),
              BouncingStickyHeaderItem(section: 0, index: 0,),
              BouncingStickyHeaderItem(section: 0, index: 1,),
              BouncingStickyHeaderItem(section: 0, index: 2,),
              BouncingStickyHeaderItem(section: 0, index: 3,),
              BouncingStickyHeaderItem(section: 0, index: 4,),
              BouncingStickyHeaderItem(section: 0, index: 5,),
              BouncingStickyHeaderHeader( index: 1,),
              BouncingStickyHeaderItem(section: 1, index: 0,),
              BouncingStickyHeaderItem(section: 1, index: 1,),
              BouncingStickyHeaderItem(section: 1, index: 2,),
              BouncingStickyHeaderItem(section: 1, index: 3,),
              BouncingStickyHeaderItem(section: 1, index: 4,),
              BouncingStickyHeaderHeader( index: 2,),
              BouncingStickyHeaderItem(section: 2, index: 0,),
              BouncingStickyHeaderItem(section: 2, index: 1,),
              BouncingStickyHeaderItem(section: 2, index: 2,),
              BouncingStickyHeaderItem(section: 2, index: 3,),
              BouncingStickyHeaderItem(section: 2, index: 4,),
              BouncingStickyHeaderItem(section: 2, index: 5,),
              BouncingStickyHeaderItem(section: 2, index: 6,),
              BouncingStickyHeaderItem(section: 2, index: 7,),
              BouncingStickyHeaderItem(section: 2, index: 8,),
              BouncingStickyHeaderItem(section: 2, index: 9,),
              BouncingStickyHeaderItem(section: 2, index: 10,),
              BouncingStickyHeaderItem(section: 2, index: 11,),
              BouncingStickyHeaderItem(section: 2, index: 12,),
              BouncingStickyHeaderItem(section: 2, index: 13,),
              BouncingStickyHeaderHeader( index: 3,),
              BouncingStickyHeaderItem(section: 3, index: 0,),
              BouncingStickyHeaderItem(section: 3, index: 1,),
              BouncingStickyHeaderItem(section: 3, index: 2,),
              BouncingStickyHeaderItem(section: 3, index: 3,),
              BouncingStickyHeaderItem(section: 3, index: 4,),
              BouncingStickyHeaderItem(section: 3, index: 5,),
              BouncingStickyHeaderItem(section: 3, index: 6,),
              BouncingStickyHeaderItem(section: 3, index: 7,),
              BouncingStickyHeaderItem(section: 3, index: 8,),
              BouncingStickyHeaderItem(section: 3, index: 9,),
              BouncingStickyHeaderItem(section: 3, index: 10,),
              BouncingStickyHeaderItem(section: 3, index: 11,),
              BouncingStickyHeaderItem(section: 3, index: 12,),
              BouncingStickyHeaderItem(section: 3, index: 13,),
              BouncingStickyHeaderItem(section: 3, index: 14,),
              BouncingStickyHeaderItem(section: 3, index: 15,),
              BouncingStickyHeaderItem(section: 3, index: 16,),
              BouncingStickyHeaderItem(section: 3, index: 17,),
              BouncingStickyHeaderItem(section: 3, index: 18,),
              BouncingStickyHeaderItem(section: 3, index: 19,),


            ],
          ),
        ),
      ),
    );
  }
}