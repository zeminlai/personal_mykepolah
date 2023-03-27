import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';
import '../utils/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utils/forum_components.dart';
import '../utils/homepage_components.dart';
import 'package:flutter_sticky_widgets/flutter_sticky_widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgressPageAppBar extends StatelessWidget {
  const ProgressPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.arrowLeft,
            color: Color(0xff47466D),
            size: ScreenSize.horizontal! * 8,
          ),
        ),
        SizedBox(
          width: ScreenSize.horizontal! * 2,
        ),
        Text(
          "Progress",
          style: TextStyle(
            color: Color(0xff47466D),
            fontSize: ScreenSize.horizontal! * 8,
            fontWeight: FontWeight.w800,
            letterSpacing: ScreenSize.horizontal! * 0.3,
          ),
        ),
      ],
    );
  }
}

class LocationDetailsCard extends StatelessWidget {
  const LocationDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: ScreenSize.horizontal! * 7),
      child: Container(
        decoration:
            BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 175, 174, 174),
            offset: Offset(0, 4),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ]),
        child: Row(
          children: [
            Container(
              width: ScreenSize.horizontal! * 45,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Image(
                    image: AssetImage("assets/mapProgress.png"),
                    fit: BoxFit.fill, // use this
                  ),
                ),
              ),
            ),
            SizedBox(
              width: ScreenSize.horizontal! * 2,
            ),
            Container(
              height: ScreenSize.vertical! * 20,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: ScreenSize.vertical! * 3.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Pothole",
                          style: TextStyle(
                            fontSize: ScreenSize.horizontal! * 6,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff47466D),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_vert_sharp),
                          padding: EdgeInsets.all(0),
                          iconSize: ScreenSize.horizontal! * 5,
                        )
                      ],
                    ),
                  ),
                  Text(
                    "Jalan Tun Razak, Puchong",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: ScreenSize.horizontal! * 3,
                    ),
                  ),
                  Container(
                    width: ScreenSize.horizontal! * 37,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const AspectRatio(
                        aspectRatio: 4 / 3,
                        child: Image(
                          image: NetworkImage(
                              "https://www.dsf.my/wp-content/uploads/2022/09/Zero-Potholes-City-4-e1662538557206.jpg?v=1662453056"),
                          fit: BoxFit.fill, // use this
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}





// class SlideBar extends StatefulWidget {
//   final List<String> categories;
//   const SlideBar({super.key, required this.categories});

//   @override
//   State<SlideBar> createState() => _SlideBarState();
// }

// class _SlideBarState extends State<SlideBar> {
//   int selectedIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       margin: EdgeInsets.only(left: size.width * 0.05),
//       width: size.width,
//       height: size.height * 0.05,
//       child: Expanded(
//         child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: widget.categories.length,
//           itemBuilder: (context, index) => buildCategory(index),
//         ),
//       ),
//     );
//   }

//   Widget buildCategory(int index) {
//     Size size = MediaQuery.of(context).size;

//     final String text = widget.categories[index];
//     final TextStyle textStyle = GoogleFonts.nunitoSans(
//       fontWeight: FontWeight.bold,
//       fontSize: size.height * 0.03,
//       textStyle: TextStyle(
//         color: selectedIndex == index ? Colors.black : Colors.blue,
//       ),
//     );
//     final Size txtSize = _textSize(text, textStyle);

//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
//       child: GestureDetector(
//         onTap: () {
//           setState(() {
//             selectedIndex = index;
//           });
//         },
//         child: Stack(
//           children: <Widget>[
//             Container(
//               decoration: BoxDecoration(
//                   color: selectedIndex == index ? Colors.blue : Colors.transparent,
//                   borderRadius: BorderRadius.circular(15)),
//               margin: const EdgeInsets.only(top: 15, left: 8),
//               height: txtSize.height * 0.45,
//               width: txtSize.width,
//             ),
//             Text(text, style: textStyle),
//           ],
//         ),
//       ),
//     );
//   }
// }
