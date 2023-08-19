import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:store_design/ad_post_page.dart';
import 'package:store_design/city_page.dart';
import 'package:store_design/login_page.dart';
import 'package:store_design/profile_page.dart';

class HomePageLandscape extends StatefulWidget {
  HomePageLandscape({Key? key}) : super(key: key);

  @override
  State<HomePageLandscape> createState() => _HomeState();
}

class _HomeState extends State<HomePageLandscape> {
  var replaceCityIcon = true;

  var _adsList = [
    'https://media.istockphoto.com/id/177709534/photo/sold-home-for-sale-real-estate-sign-and-house.jpg?s=612x612&w=0&k=20&c=kPJTPxQykEJ71ZWeFqNH5lWHVA-GhK2-4ppv1sGbtgI=',
    'https://dragon2000-multisite.s3.eu-west-2.amazonaws.com/wp-content/uploads/sites/274/2022/04/19143130/hollins-hill-car-sales-home-hero-05.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7V1SwHu27hcmWBuf4HTDOGp-QjNnwKonSOQ&usqp=CAU',
  ];

  var _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      bottomNavigationBar: BottomAppBar(
        child: FilledButton.icon(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                Theme.of(context).colorScheme.primary),
            foregroundColor: MaterialStateProperty.all<Color>(
                Theme.of(context).colorScheme.onPrimary),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddPostPage()));
          },
          icon: Image.asset(
            'assets/megaphone.png',
            width: 35,
            height: 35,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          label: const Text('أضف إعلانك',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Positioned(
                          bottom: -4,
                          right: -4,
                          child: Image.asset(
                            'assets/waseet.png',
                            width: 170,
                            color: Theme.of(context)
                                .colorScheme
                                .outline
                                .withOpacity(0.1),
                          ),
                        ),
                        Image.asset('assets/waseet.png', width: 170),
                      ],
                    ),
                    Text(
                      'وسيطك الموثوق، أضف واستفد!',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Stack(
                      children: [
                        InkResponse(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfilePage()));
                          },
                          child: CircleAvatar(
                            maxRadius: 25,
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRij6dtiHizH96qpCOe8WeXXP3yLyQJkPdGVg&usqp=CAU'),
                          ),
                        ),
                        Positioned(
                          top: -10,
                          left: -2,
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.red),
                            child: const Text(
                              '12',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                      clipBehavior: Clip.none,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined,
                            color: Theme.of(context).colorScheme.primary),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          'أعـزاز',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            letterSpacing: 1,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              margin: const EdgeInsets.all(8),
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.pink.shade700,
                                    Colors.pink.shade900,
                                  ],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.pink.shade900.withOpacity(0.5),
                                    blurRadius: 10,
                                    offset: const Offset(0, 5),
                                  ),
                                ],
                              ),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(10),
                                onTap: () {
                                  setState(() {
                                    // replaceCityIcon = !replaceCityIcon;
                                    //open city page
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const CityPage('مدينتي')));
                                  });
                                },
                                child: Stack(
                                  children: [
                                    Positioned(
                                        top: 32,
                                        right: 32,
                                        child: Image.asset(
                                          replaceCityIcon
                                              ? 'assets/city.png'
                                              : 'assets/cityscape.png',
                                          width: 160,
                                          height: 160,
                                          color: Colors.white.withOpacity(0.1),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            replaceCityIcon
                                                ? 'assets/city.png'
                                                : 'assets/cityscape.png',
                                            width: 100,
                                            height: 100,
                                            color: Colors.white,
                                          ),
                                          const SizedBox(
                                            height: 16,
                                          ),
                                          const Text(
                                            'مدينتي',
                                            style: TextStyle(
                                              fontSize: 38,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                        bottom: 8,
                                        left: 8,
                                        child: Container(
                                          height: 24,
                                          width: 24,
                                          child: Image.asset(
                                            'assets/back.png',
                                            color: Colors.white,
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            )),
                            Expanded(
                                child: Container(
                              margin: const EdgeInsets.all(8),
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.green.shade700,
                                    Colors.green.shade900,
                                  ],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.green.shade900.withOpacity(0.5),
                                    blurRadius: 10,
                                    offset: const Offset(0, 5),
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                      top: 32,
                                      right: 32,
                                      child: Image.asset(
                                        'assets/world-humanitarian-day.png',
                                        width: 160,
                                        height: 160,
                                        color: Colors.white.withOpacity(0.1),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          'assets/world-humanitarian-day.png',
                                          width: 100,
                                          height: 100,
                                          color: Colors.white,
                                        ),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        const Text(
                                          'إنساني',
                                          style: TextStyle(
                                            fontSize: 38,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 8,
                                      left: 8,
                                      child: Container(
                                        height: 24,
                                        width: 24,
                                        child: Image.asset(
                                          'assets/back.png',
                                          color: Colors.white,
                                        ),
                                      ))
                                ],
                              ),
                            )),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              margin: const EdgeInsets.all(8),
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.orange.shade700,
                                    Colors.orange.shade900,
                                  ],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.orange.shade900.withOpacity(0.5),
                                    blurRadius: 10,
                                    offset: const Offset(0, 5),
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                      top: 32,
                                      right: 32,
                                      child: Image.asset(
                                        'assets/business.png',
                                        width: 160,
                                        height: 160,
                                        color: Colors.white.withOpacity(0.15),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          'assets/business.png',
                                          width: 100,
                                          height: 100,
                                          color: Colors.white,
                                        ),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        const Text(
                                          'مهني',
                                          style: TextStyle(
                                            fontSize: 38,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 8,
                                      left: 8,
                                      child: Container(
                                        height: 24,
                                        width: 24,
                                        child: Image.asset(
                                          'assets/back.png',
                                          color: Colors.white,
                                        ),
                                      ))
                                ],
                              ),
                            )),
                            Expanded(
                                child: Container(
                              margin: const EdgeInsets.all(8),
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.blue.shade700,
                                    Colors.blue.shade900,
                                  ],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.blue.shade900.withOpacity(0.5),
                                    blurRadius: 10,
                                    offset: const Offset(0, 5),
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                      top: 32,
                                      right: 32,
                                      child: Image.asset(
                                        'assets/asset.png',
                                        width: 160,
                                        height: 160,
                                        color: Colors.white.withOpacity(0.1),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          'assets/asset.png',
                                          width: 100,
                                          height: 100,
                                          color: Colors.white,
                                        ),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        const Text(
                                          'عقاري',
                                          style: TextStyle(
                                            fontSize: 38,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 10,
                                      left: 10,
                                      child: Container(
                                        height: 24,
                                        width: 24,
                                        child: Image.asset(
                                          'assets/back.png',
                                          color: Colors.white,
                                        ),
                                      ))
                                ],
                              ),
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8,top: 6,bottom: 8),
                        child: Column(
                          children: [
                            for (var item in _adsList)
                              AspectRatio(
                                aspectRatio: 2/1,
                                child: Stack(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          image: DecorationImage(
                                              image: NetworkImage(item),
                                              fit: BoxFit.cover)),
                                    ),
                                    Positioned(
                                      top: 8,
                                      right: 8,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 4),
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.circular(8)),
                                        child: Row(
                                          children: const [
                                            Icon(
                                              Icons.star,
                                              color: Colors.white,
                                              size: 16,
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              'إعلان مميز',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
