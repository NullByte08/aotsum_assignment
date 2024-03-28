import 'package:aotsum_assignment/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    var border = const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent));
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        double screenHeight = constraints.maxHeight;
        return Scaffold(
          body: Stack(
            children: [
              Container(
                height: screenHeight,
                width: screenWidth,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFFADB14),
                      Colors.white,
                      Colors.white,
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: getRelativeDimension(65, 812, screenHeight),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/images/menu_icon.svg"),
                        const SizedBox(width: 5),
                        const Icon(
                          Icons.bolt,
                        ),
                        const Text(
                          "Vishal Prints",
                          style: TextStyle(fontSize: 16, color: Colors.black, fontFamily: "SegoeUI"),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.notifications_none,
                          size: 25,
                        ),
                        const SizedBox(width: 16),
                        const Icon(
                          Icons.favorite_border,
                          size: 25,
                        ),
                        const SizedBox(width: 16),
                        SvgPicture.asset("assets/images/shopping_bag_icon.svg",width: 20,)
                      ],
                    ),
                  ),
                  const SizedBox(height: 19),

                  //Search box
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x29000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        )
                      ],
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: border,
                        focusedBorder: border,
                        enabledBorder: border,
                        contentPadding: const EdgeInsets.only(left: 20),
                        prefixIcon: const Icon(
                          Icons.search, //todo
                        ),
                        hintStyle: GoogleFonts.firaSans(
                          //todo
                          fontSize: 14,
                          color: const Color(0xFF7D7D7D).withAlpha(224),
                        ),
                        hintText: "What are you looking for",
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.all(0),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              for (int i in [0, 1, 2, 4])
                                Flexible(
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 64,
                                        height: 64,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x29000000),
                                              offset: Offset(0, 3),
                                              blurRadius: 6,
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        "Border Saree",
                                        style: GoogleFonts.openSans(
                                          fontSize: 12,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        SizedBox(
                          height: 190,
                          child: ListView(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            scrollDirection: Axis.horizontal,
                            children: const [
                              BannerImage(),
                              SizedBox(width: 10),
                              BannerImage(),
                              SizedBox(width: 10),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Text(
                                "Catalogue",
                                style: GoogleFonts.openSans(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                "View all",
                                style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 5),
                              SvgPicture.asset("assets/images/arrow_up_right.svg"),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CatalogueCard(),
                              CatalogueCard(),
                              CatalogueCard(),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CatalogueCard(),
                              CatalogueCard(),
                              CatalogueCard(),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),

                        //Border Saree text
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Text(
                                "Border Saree",
                                style: GoogleFonts.openSans(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                "View all",
                                style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 5),
                              SvgPicture.asset("assets/images/arrow_up_right.svg"),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),

                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Expanded(
                                child: SareeCard(),
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: SareeCard(),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 18),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Expanded(
                                child: SareeCard(),
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: SareeCard(),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 100),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          bottomNavigationBar: Container(
            height: 62,
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0x24000000),
                  offset: Offset(0, -3),
                  blurRadius: 10
                )
              ]
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/images/home_bnb_icon.svg"),
                      const SizedBox(height: 4),
                      Text(
                        "Home",
                        style: GoogleFonts.roboto(
                          color: const Color(0xFF531DAB),
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/images/heart_bnb_icon.svg"),
                      const SizedBox(height: 4),
                      Text(
                        "Wishlist",
                        style: GoogleFonts.roboto(
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/images/cart_bnb_icon.svg"),
                      const SizedBox(height: 4),
                      Text(
                        "Cart",
                        style: GoogleFonts.roboto(
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/images/order_bnb_icon.svg"),
                      const SizedBox(height: 4),
                      Text(
                        "My Order",
                        style: GoogleFonts.roboto(
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class SareeCard extends StatefulWidget {
  const SareeCard({
    super.key,
  });

  @override
  State<SareeCard> createState() => _SareeCardState();
}

class _SareeCardState extends State<SareeCard> {
  bool _fav = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      decoration: BoxDecoration(
        color: const Color(0xFFF9F9F9),
        boxShadow: const [
          BoxShadow(
            color: Color(0x29000000),
            offset: Offset(0, 3),
            blurRadius: 6,
          )
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              SizedBox(
                height: 134,
                child: Image.network(
                  "https://t4.ftcdn.net/jpg/02/66/72/41/360_F_266724172_Iy8gdKgMa7XmrhYYxLCxyhx6J7070Pr8.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _fav = !_fav;
                  });
                },
                child: Container(
                  width: 26,
                  height: 26,
                  margin: const EdgeInsets.only(top: 8, right: 10),
                  decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                  child: _fav
                      ? const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 18,
                        )
                      : const Icon(
                          Icons.favorite_border,
                          size: 18,
                        ),
                ),
              )
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Text(
              "Vishal Prints Turquoise",
              style: GoogleFonts.openSans(
                color: const Color(0xFF2709C5),
                fontSize: 13,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Row(
              children: [
                Text(
                  "Rs. 1499",
                  style: GoogleFonts.openSans(
                    color: const Color(0xFF2C2A35),
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  "Rs. 1599",
                  style: TextStyle(
                    color: const Color(0xFF6D6D78).withAlpha(153),
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Text(
              "1 set(24 pieces)",
              style: GoogleFonts.openSans(
                color: const Color(0xFFE31E24),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class CatalogueCard extends StatelessWidget {
  const CatalogueCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: 100,
          height: 88,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.red,
          ),
        ),
        Container(
          width: 100,
          padding: const EdgeInsets.symmetric(vertical: 4),
          decoration: BoxDecoration(color: const Color(0xFF722ED1), borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.white)),
          child: Center(
            child: Text(
              "Catalogue",
              style: GoogleFonts.openSans(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class BannerImage extends StatelessWidget {
  const BannerImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAlias,
      child: Image.network(
        "https://hips.hearstapps.com/hmg-prod/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
}
