import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:store_design/IntroductionPage.dart';
import 'package:store_design/ad_post_page.dart';
import 'package:store_design/city_page.dart';
import 'package:store_design/login_page.dart';
import 'package:store_design/profile_page.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var replaceCityIcon = true;

  var _adsList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpnjTwmhztgJgKH4lVHaKfuJAAlEP-Gcw8WbT96Ypioq2feZiytvvBO715ZZNTRoYBn3E&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS5UgnThSZglYr2es6ALZG7yghFdNCyYyPRz5B-l0EeKDERCxf7rnQ8RVAYpxcYFVVocU&usqp=CAU',
    'https://preview.redd.it/n2e7iiqnvhv51.png?auto=webp&s=d781b8125e57ad43fb67558613a3f43e547b0b59',
    'https://img.freepik.com/premium-vector/flat-design-bag-store-logo-template_852937-4685.jpg',
  ];

  var _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      bottomNavigationBar: BottomAppBar(
        child: FilledButton.icon(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(const Color(0xff24e490)),
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
            height: 48,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // show introduction page
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return IntroductionPage();
                        }));
                      },
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: -4,
                            right: -4,
                            child: Image.asset(
                              'assets/waseet.png',
                              width: 150,
                              color: Theme.of(context)
                                  .colorScheme
                                  .outline
                                  .withOpacity(0.1),
                            ),
                          ),
                          Image.asset('assets/waseet.png', width: 150),
                        ],
                      ),
                    ),
                    Text(
                      'وسيطك الموثوق، أضف واستفد!',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onBackground),
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
                            maxRadius: 22,
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
                            color: Color(0xff24e490)),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          'أعـزاز',
                          style: TextStyle(
                            color: const Color(0xff24e490),
                            letterSpacing: 1,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Spacer(),
          Column(
            children: [
              Row(
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
                  )),
                ],
              ),
              Row(
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
                  )),
                ],
              )
            ],
          ),
          Spacer(),
          AspectRatio(
            aspectRatio: 2 / 1,
            child: Swiper(
              itemCount: _adsList.length,
              autoplay: true,
              duration: 1000,
              autoplayDelay: 5000,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Container(
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
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(.8),
                              Colors.black.withOpacity(.1),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'متجر السعادة',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        boxShadow: [
                                          BoxShadow(color: Colors.black45)
                                        ]),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        'الشارع الرئيسي - الدوار الثاني - الدور الأول',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                 Row(children: [
                                   Row(
                                     children: [
                                       Icon(
                                         Icons.phone,
                                         color: Theme.of(context)
                                             .colorScheme
                                             .primary,
                                       ),
                                       SizedBox(
                                         width: 8,
                                       ),
                                       Text(
                                         '+90552336251',
                                         style: const TextStyle(
                                           fontWeight: FontWeight.bold,
                                           color: Colors.white,
                                         ),
                                       ),
                                     ],
                                   ),
                                   Spacer(),
                                   Row(
                                     children: [
                                       Icon(
                                         Icons.alternate_email_sharp,
                                         color: Theme.of(context)
                                             .colorScheme
                                             .primary,
                                       ),
                                       SizedBox(
                                         width: 8,
                                       ),
                                       Text(
                                         'www.wasit.com',
                                         style: const TextStyle(
                                           fontWeight: FontWeight.bold,
                                           color: Colors.white,
                                         ),
                                       ),
                                     ],
                                   ),
                                 ],)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
              viewportFraction: 0.8,
              scale: 0.9,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  maxRadius: 40,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRij6dtiHizH96qpCOe8WeXXP3yLyQJkPdGVg&usqp=CAU'),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'محمد عبد الله',
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('الملف الشخصي'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('الإعدادات'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('عن التطبيق'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text('مشاركة التطبيق'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text('تقييم التطبيق'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('تسجيل الخروج'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const LoginPage();
              }));
            },
          ),
          const Spacer(),
          const Divider(),
          const SizedBox(
            height: 8,
          ),
          const Text('الإصدار 1.0.0'),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
