import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:store_design/ad_post_page.dart';
import 'package:store_design/city_page.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var replaceCityIcon = true;

  var _adsList = [
    'https://media.istockphoto.com/id/177709534/photo/sold-home-for-sale-real-estate-sign-and-house.jpg?s=612x612&w=0&k=20&c=kPJTPxQykEJ71ZWeFqNH5lWHVA-GhK2-4ppv1sGbtgI=',
    'https://dragon2000-multisite.s3.eu-west-2.amazonaws.com/wp-content/uploads/sites/274/2022/04/19143130/hollins-hill-car-sales-home-hero-05.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7V1SwHu27hcmWBuf4HTDOGp-QjNnwKonSOQ&usqp=CAU',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Transform.scale(
            scale: 1.1, child: Image.asset('assets/waseet.png', width: 200)),
        centerTitle: true,
        leadingWidth: 90,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            SizedBox(
              width: 8,
            ),  Icon(
              Icons.menu,
              size: 30,
            ),SizedBox(
              width: 8,
            ),
            CircleAvatar(
              maxRadius: 22,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRij6dtiHizH96qpCOe8WeXXP3yLyQJkPdGVg&usqp=CAU'),
            ),
          ],
        ),
        actions: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Theme.of(context).colorScheme.primary,
                size: 28,
              ),
              Text(
                'أعزاز',
                style: TextStyle(
                    fontSize: 8, fontWeight: FontWeight.bold, letterSpacing: 1),
              )
            ],
          ),
          SizedBox(
            width: 16,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              const Icon(Icons.notifications_none, size: 30),
              Transform.translate(
                offset: const Offset(-12, -18),
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
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
      // bottomNavigationBar have tow buttons (add your ad, qr code)
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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AddPostPage()));
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
            height: 16,
          ),
          Expanded(
            child: Column(
              children: [
                //four buttons here (categories)
                const SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: [
                      Container(
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
                                  top: 25,
                                  right: 25,
                                  child: Image.asset(
                                    replaceCityIcon
                                        ? 'assets/city.png'
                                        : 'assets/cityscape.png',
                                    width: 120,
                                    height: 120,
                                    color: Colors.white.withOpacity(0.1),
                                  )),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      replaceCityIcon
                                          ? 'assets/city.png'
                                          : 'assets/cityscape.png',
                                      width: 85,
                                      height: 85,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                      'مدينتي',
                                      style: TextStyle(
                                        fontSize: 28,
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
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                      'assets/back.png',
                                      color: Colors.white,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Container(
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
                                top: 25,
                                right: 25,
                                child: Image.asset(
                                  'assets/world-humanitarian-day.png',
                                  width: 120,
                                  height: 120,
                                  color: Colors.white.withOpacity(0.1),
                                )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/world-humanitarian-day.png',
                                    width: 85,
                                    height: 85,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  const Text(
                                    'إنساني',
                                    style: TextStyle(
                                      fontSize: 28,
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
                                  height: 20,
                                  width: 20,
                                  child: Image.asset(
                                    'assets/back.png',
                                    color: Colors.white,
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Container(
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
                                top: 25,
                                right: 25,
                                child: Image.asset(
                                  'assets/business.png',
                                  width: 120,
                                  height: 120,
                                  color: Colors.white.withOpacity(0.15),
                                )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/business.png',
                                    width: 85,
                                    height: 85,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  const Text(
                                    'مهني',
                                    style: TextStyle(
                                      fontSize: 28,
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
                                  height: 20,
                                  width: 20,
                                  child: Image.asset(
                                    'assets/back.png',
                                    color: Colors.white,
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Container(
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
                                top: 25,
                                right: 25,
                                child: Image.asset(
                                  'assets/asset.png',
                                  width: 120,
                                  height: 120,
                                  color: Colors.white.withOpacity(0.1),
                                )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/asset.png',
                                    width: 85,
                                    height: 85,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  const Text(
                                    'عقاري',
                                    style: TextStyle(
                                      fontSize: 28,
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
                                  height: 20,
                                  width: 20,
                                  child: Image.asset(
                                    'assets/back.png',
                                    color: Colors.white,
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          AspectRatio(
            aspectRatio: 2/1,
            child: Swiper(
              itemCount: 3,
              autoplay: true,
              duration: 1000,
              autoplayDelay: 5000,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: NetworkImage(_adsList[index]),
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
                );
              },
              viewportFraction: 0.8,
              scale: 0.9,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}

