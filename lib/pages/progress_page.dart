import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mykepolah/utils/progress_components.dart';
import 'package:sticky_headers/sticky_headers.dart';
import '../utils/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utils/forum_components.dart';
import '../utils/homepage_components.dart';
import 'package:flutter_sticky_widgets/flutter_sticky_widgets.dart';
import 'package:iconsax/iconsax.dart';

class ProgressPage extends StatelessWidget {
  const ProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: ScreenSize.vertical! * 15,
        backgroundColor: Color(0xffF6F6F6),
        elevation: 0,
        title: ProgressPageAppBar(),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: ScreenSize.horizontal! * 7),
            child: Icon(
              Iconsax.filter_search5,
              color: Color(0xff47466D),
              size: ScreenSize.horizontal! * 7,
            ),
          )
        ],
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: const Color(0xffF6F6F6),
        height: double.infinity,
        child: Column(children: [
          LocationDetailsCard(),
        ]),
      ),
    );
  }
}
