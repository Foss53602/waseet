import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:store_design/ad_post_page.dart';
import 'package:store_design/store_page.dart';

class CityPage extends StatefulWidget {
  final String cityName;

  const CityPage(this.cityName, {super.key});

  @override
  State<CityPage> createState() => _CityPageState();
}

class _CityPageState extends State<CityPage> {
  var _adsList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYF4TMH18HMjRfillkNAxrWyhM5RX6U-qKwA&usqp=CAU',
    'https://www.pricestore.net/wp-content/uploads/2022/08/%D8%A7%D9%81%D8%B6%D9%84-%D8%A7%D9%84%D8%B9%D8%B1%D9%88%D8%B6-%D8%B9%D9%84%D9%8A-%D8%A7%D9%84%D9%75%D9%86%D8%AA%D8%AC%D8%A7%D8%AA.webp',
    'https://yt3.googleusercontent.com/PxXdOFFxTFCZj-mdDE7kMtsWGLBAxVPr3oHbtY5siiyT0Z3puJUarvH-e1vcZk1b2R0k--WGZQ=s900-c-k-c0x00ffffff-no-rj',
  ];

  bool shooping = false;

  bool devices = false;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        floatingActionButton: devices
            ? FloatingActionButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddPostPage()));
                },
                child: const Icon(Icons.add),
              )
            : null,
        appBar: AppBar(
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/city.png',
                color: Colors.pink,
                width: 30,
                height: 30,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(widget.cityName),
            ],
          ),
          centerTitle: true,
          leadingWidth: 90,
          leading: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 16),
                child: CircleAvatar(
                  maxRadius: 22,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRij6dtiHizH96qpCOe8WeXXP3yLyQJkPdGVg&usqp=CAU'),
                ),
              ),
            ],
          ),
          actions: [
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
        body: shooping
            ? _drawShoopingWidgte()
            : Column(
                children: [
                  Spacer(),
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
                                Colors.lightBlue.shade700,
                                Colors.lightBlue.shade900,
                              ],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.lightBlue.withOpacity(0.5),
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
                                    'assets/phonendoscope.png',
                                    width: 90,
                                    height: 90,
                                    color: Colors.white.withOpacity(0.1),
                                  )),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/phonendoscope.png',
                                      width: 75,
                                      height: 75,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                      'طبي',
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
                                    'assets/engineer.png',
                                    width: 90,
                                    height: 90,
                                    color: Colors.white.withOpacity(0.1),
                                  )),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/engineer.png',
                                      width: 75,
                                      height: 75,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                      'خدمات',
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
                                Colors.teal.shade700,
                                Colors.teal.shade900,
                              ],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.teal.shade900.withOpacity(0.5),
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
                                    'assets/calendar.png',
                                    width: 90,
                                    height: 90,
                                    color: Colors.white.withOpacity(0.1),
                                  )),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/calendar.png',
                                      width: 75,
                                      height: 75,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                      'حجوزات',
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
                                  )),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                Colors.lime.shade700,
                                Colors.lime.shade900,
                              ],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.lime.shade900.withOpacity(0.5),
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
                                    'assets/invoice.png',
                                    width: 90,
                                    height: 90,
                                    color: Colors.white.withOpacity(0.1),
                                  )),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/invoice.png',
                                      width: 75,
                                      height: 75,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                      'فواتير',
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
                                  )),
                            ],
                          ),
                        ),
                      ),
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
                                Colors.lightGreen.shade700,
                                Colors.lightGreen.shade900,
                              ],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    Colors.lightGreen.shade900.withOpacity(0.5),
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
                                    'assets/trolley.png',
                                    width: 90,
                                    height: 90,
                                    color: Colors.white.withOpacity(0.1),
                                  )),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      shooping = true;
                                    });
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/trolley.png',
                                        width: 75,
                                        height: 75,
                                        color: Colors.white,
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      const Text(
                                        'تسوق',
                                        style: TextStyle(
                                          fontSize: 28,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
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
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                Colors.blueGrey.shade700,
                                Colors.blueGrey.shade900,
                              ],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    Colors.blueGrey.shade900.withOpacity(0.5),
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
                                    'assets/delivery-bike.png',
                                    width: 90,
                                    height: 90,
                                    color: Colors.white.withOpacity(0.1),
                                  )),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/delivery-bike.png',
                                      width: 75,
                                      height: 75,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                      'توصيل',
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
                    ],
                  ),
                  Spacer(),
                  AspectRatio(
                    aspectRatio: 2 / 1,
                    child: Swiper(
                      itemCount: 3,
                      autoplay: true,
                      duration: 900,
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
                  Spacer(),
                ],
              ),
      ),
    );
  }

  Widget _drawShoopingWidgte() {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            const SizedBox(
              width: 16,
            ),
            //back icon
            IconButton(
              onPressed: () {
                if (devices) {
                  setState(() {
                    devices = false;
                  });
                } else if (shooping) {
                  setState(() {
                    shooping = false;
                  });
                }
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
            const SizedBox(
              width: 4,
            ),
            Image.asset(
              'assets/trolley.png',
              width: 25,
              height: 25,
              color: Colors.green,
            ),
            const SizedBox(
              width: 8,
            ),
            const Text(
              'تسوق',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            if (devices)
              const SizedBox(
                width: 8,
              ),
            if (devices)
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            if (devices)
              const SizedBox(
                width: 8,
              ),
            if (devices)
              const Text(
                'جوالات و الكترونيات',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            Spacer(),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        if (devices)
          Expanded(child: _drawDevicesStoresWidget())
        else
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.devices_other_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  onTap: () {
                    setState(() {
                      devices = true;
                    });
                  },
                  title: const Text('جوالات و الكترونيات'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(
                    Icons.restaurant_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text('مطاعم ومطابخ'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(
                    Icons.shopping_bag_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text('موضة وأزياء'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(
                    //park icon
                    Icons.park_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text('منتزهات - صالات افراح'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(
                    //salons icon
                    Icons.spa_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text('عرائس وصالونات'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                // مثلجات - حلويات
                ListTile(
                  leading: Icon(
                    //ice cream icon
                    Icons.icecream_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text('مثلجات - حلويات'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(
                    Icons.local_pharmacy_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text('صيدليات'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(
                    Icons.storefront,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text('متاجر ومحلات'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(
                    Icons.devices_other_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text('جوالات و الكترونيات'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(
                    Icons.restaurant_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text('مطاعم ومطابخ'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(
                    Icons.shopping_bag_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text('موضة وأزياء'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(
                    //park icon
                    Icons.park_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text('منتزهات - صالات افراح'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(
                    //salons icon
                    Icons.spa_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text('عرائس وصالونات'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                // مثلجات - حلويات
                ListTile(
                  leading: Icon(
                    //ice cream icon
                    Icons.icecream_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text('مثلجات - حلويات'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(
                    Icons.devices_other_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text('جوالات و الكترونيات'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(
                    Icons.restaurant_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text('مطاعم ومطابخ'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(
                    Icons.shopping_bag_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text('موضة وأزياء'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(
                    //park icon
                    Icons.park_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text('منتزهات - صالات افراح'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(
                    //salons icon
                    Icons.spa_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text('عرائس وصالونات'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                // مثلجات - حلويات
                ListTile(
                  leading: Icon(
                    //ice cream icon
                    Icons.icecream_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text('مثلجات - حلويات'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _drawDevicesStoresWidget() {
    // grid view of stores with images and name and city name and phone number , location
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'بحث',
              border: InputBorder.none,
              prefixIcon: const Icon(Icons.search),
              fillColor: Theme.of(context).brightness == Brightness.light
                  ? Theme.of(context).colorScheme.surface
                  : null,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              isDense: true,
            ),
          ),
        ),
        Expanded(
            child: SingleChildScrollView(
          child: Column(children: [
            for (int i = 0; i < 10; i++)
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).colorScheme.surface,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => StorePage()));
                  },
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          width: 110,
                          height: 110,
                          child: i == 0 || i == 3
                              ? Container(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .surfaceVariant,
                                  child: Center(
                                    child: Icon(
                                      Icons.store_mall_directory_rounded,
                                      size: 50,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary
                                          .withOpacity(0.5),
                                    ),
                                  ),
                                )
                              : Image(
                                  image: NetworkImage(i % 2 == 0
                                      ? 'https://2beinstore.com/img/shops/bUtHeUN5c1pWOXJKVTJwRlp5RVJiaDQ3OENMOHk4RUZNL01YamV0cVFUSGRoN0UzOE1ON01GZ09vVkJJTTZaUzFtQ3J6ZVE3YjNlZzh0Z0UzS1I1d1E9PQ/gallery/shop-klc-mobile-store-berlin-germany-JvsSdqhPVN.jpg'
                                      : 'https://i0.wp.com/movingtips.wpengine.com/wp-content/uploads/2017/01/appliances.jpg?fit=600%2C360&ssl=1'),
                                  fit: BoxFit.cover,
                                ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              i % 2 == 0
                                  ? 'متجر KLC للجوالات'
                                  : 'متجر السعادة للكهربائات',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  size: 16,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Text(
                                  'أعزاز - دوار الكف',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.phone,
                                  size: 16,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Text(
                                  '561984531651',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time,
                                  size: 16,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Text(
                                  'من 8 صباحا الى 10 مساء',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
          ]),
        ))
      ],
    );
  }
}
