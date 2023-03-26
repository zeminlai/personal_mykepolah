import 'package:flutter/material.dart';
import 'package:mykepolah/utils/homepage_components.dart';
import '../utils/size_config.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xffF6F6F6),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Light green circle in background
              Positioned(
                top: ScreenSize.vertical! * -50,
                child: Container(
                    width: ScreenSize.horizontal! * 150,
                    height: ScreenSize.vertical! * 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffABEDD8),
                    )),
              ),
              SafeArea(
                child: Container(
                  margin: EdgeInsets.symmetric(
                    vertical: ScreenSize.vertical! * 5,
                    horizontal: ScreenSize.horizontal! * 7,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Welcome header
                      Row(
                        children: [
                          Image(
                              image: const AssetImage('assets/menu.png'),
                              height: ScreenSize.horizontal! * 10),
                          SizedBox(
                            width: ScreenSize.horizontal! * 3,
                          ),
                          Text(
                            "Welcome!",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xff47466D),
                              fontSize: ScreenSize.horizontal! * 10,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: ScreenSize.vertical! * 2,
                      ),
                      // Progress update
                      ProgressUpdateCard(),
                      SizedBox(
                        height: ScreenSize.vertical! * 4,
                      ),

                      // My report section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GreenUnderlinedText(
                              text: "My Report",
                              top: ScreenSize.vertical! * 2,
                              left: ScreenSize.horizontal! * 3,
                              height: ScreenSize.vertical! * 3,
                              width: ScreenSize.horizontal! * 40,
                              fontSize: ScreenSize.horizontal! * 8),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "View All",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff47466D),
                                  fontSize: ScreenSize.horizontal! * 3.5,
                                ),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: ScreenSize.vertical! * 1.5,
                      ),
                      ForumPostCard(
                        name: "CGay Yonz",
                        address: "Kuala Kangsar, Kelantan",
                        networkImagePerson:
                            "https://scontent-kul3-1.xx.fbcdn.net/v/t31.18172-8/12339515_10153417110783650_3413788825013236803_o.jpg?_nc_cat=104&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=vewv1-H8cvkAX8B1se8&_nc_ht=scontent-kul3-1.xx&oh=00_AfDjDPok-IENLtiVajRqR9zRGUhTXvh1BtenQ4kMkb4eyA&oe=64463FB2",
                        networkImagePlace:
                            "https://da4dkroembtou.cloudfront.net/wp-content/uploads/2020/12/main_1512_P4a_sf_1.jpg",
                        title: "So many potholes here...",
                        description: "Please fix this ASAP bruh",
                        likes: 243,
                        onTap: () {
                          Navigator.pushNamed(context, '/2');
                        },
                      ),

                      SizedBox(height: ScreenSize.vertical! * 3),
                      ForumPostCard(
                        name: "Mango Tan",
                        address: "Kepong, Kuala Lumpur",
                        networkImagePerson:
                            "https://scontent-kut2-1.xx.fbcdn.net/v/t1.6435-9/31817390_1448910555255518_2611503638257860608_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=174925&_nc_ohc=FJmDTPCc04cAX-4uQa-&_nc_oc=AQnyaeoZgOOU4-pFJuaImO63lKRjKISBDjM2aYM_017u6lrawlR2IgJqzHYV0WTQb-Y&_nc_ht=scontent-kut2-1.xx&oh=00_AfCGjqahPk6DlQ--0g3lq9fTlnw3zRN-T_dA1XX39l_i2g&oe=644660E8",
                        networkImagePlace:
                            "https://cleanmalaysia.com/wp-content/uploads/2017/08/maxresdefault-2.jpg",
                        title: "Elephants on da road again grapee",
                        description: "This happened for the 5th time this month",
                        likes: 129,
                        onTap: () {
                          Navigator.pushNamed(context, '/2');
                        },
                      ),
                      SizedBox(height: ScreenSize.vertical! * 3),
                      ForumPostCard(
                        name: "Lai the reporter",
                        address: "Tawau, Sabah",
                        networkImagePerson:
                            "https://scontent-kul3-1.xx.fbcdn.net/v/t1.18169-9/26904213_1947314435284491_6168116030566342632_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=7gtFN7IckncAX8oSi-I&_nc_ht=scontent-kul3-1.xx&oh=00_AfA2sdkV19kQR02j7vICvodzIhFqGJKfX1umREJx3-W-QA&oe=64466B97",
                        networkImagePlace:
                            "https://thesmartlocal.my/wp-content/uploads/2021/12/pothole-in-Sabah-3.jpg",
                        title: "Slightly bigger pothole...",
                        description: "Luckily I noticed it before driving into it",
                        likes: 69,
                        onTap: () {
                          Navigator.pushNamed(context, '/2');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
