import 'package:flutter/material.dart';

class AddPostPage extends StatefulWidget {
  const AddPostPage({super.key});

  @override
  State<AddPostPage> createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  var items2 = [
    DropdownMenuItem(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('إنساني'),
          const SizedBox(
            width: 16,
          ),
          Image.asset('assets/world-humanitarian-day.png',
              color: Colors.green, width: 30, height: 30),
        ],
      ),
      value: 'إنساني',
    ),
    DropdownMenuItem(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('مهني'),
          const SizedBox(
            width: 16,
          ),
          Image.asset('assets/business.png',
              width: 30, height: 30, color: Colors.orange),
        ],
      ),
      value: 'مهني',
    ),
    DropdownMenuItem(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('عقاري'),
          const SizedBox(
            width: 16,
          ),
          Image.asset('assets/asset.png',
              width: 30, height: 30, color: Colors.blue),
        ],
      ),
      value: 'عقاري',
    ),
    DropdownMenuItem(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('مدينتي'),
          const SizedBox(
            width: 16,
          ),
          Image.asset(
            'assets/city.png',
            width: 30,
            height: 30,
            color: Colors.pink,
          ),
        ],
      ),
      value: 'مدينتي',
    ),
  ];

  var cityCategory = [
    DropdownMenuItem(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('طبي'),
          const SizedBox(
            width: 16,
          ),
          Image.asset(
            'assets/phonendoscope.png',
            width: 30,
            height: 30,
            color: Colors.lightBlue,
          ),
        ],
      ),
      value: 'طبي',
    ),
    DropdownMenuItem(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('خدمات'),
          const SizedBox(
            width: 16,
          ),
          Image.asset(
            'assets/engineer.png',
            width: 30,
            height: 30,
            color: Colors.orange,
          ),
        ],
      ),
      value: 'خدمات',
    ),
    DropdownMenuItem(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('حجوزات'),
          const SizedBox(
            width: 16,
          ),
          Image.asset(
            'assets/calendar.png',
            width: 30,
            height: 30,
            color: Colors.teal,
          ),
        ],
      ),
      value: 'حجوزات',
    ),
    DropdownMenuItem(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('فواتير'),
          const SizedBox(
            width: 16,
          ),
          Image.asset(
            'assets/invoice.png',
            width: 30,
            height: 30,
            color: Colors.lime,
          ),
        ],
      ),
      value: 'فواتير',
    ),
    DropdownMenuItem(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('تسويق'),
          const SizedBox(
            width: 16,
          ),
          Image.asset(
            'assets/trolley.png',
            width: 30,
            height: 30,
            color: Colors.lightGreen,
          ),
        ],
      ),
      value: 'تسويق',
    ),
    DropdownMenuItem(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('توصيل'),
          const SizedBox(
            width: 16,
          ),
          Image.asset(
            'assets/delivery-bike.png',
            width: 30,
            height: 30,
            color: Colors.blueGrey,
          ),
        ],
      ),
      value: 'توصيل',
    ),
  ];

  var subCityCategory = [
    DropdownMenuItem(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('متاجر ومحلات'),
          const SizedBox(
            width: 16,
          ),
          Icon(
            Icons.devices_other_outlined,
            color: Color(0xFF006D41),
          ),
        ],
      ),
      value: 'متاجر ومحلات',
    ),
    DropdownMenuItem(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('مطاعم ومطابخ'),
          const SizedBox(
            width: 16,
          ),
          Icon(
            Icons.restaurant_outlined,
            color: Color(0xFF006D41),
          ),
        ],
      ),
      value: 'مطاعم ومطابخ',
    ),
    DropdownMenuItem(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('موضة وأزياء'),
          const SizedBox(
            width: 16,
          ),
          Icon(
            Icons.shopping_bag_outlined,
            color: Color(0xFF006D41),
          ),
        ],
      ),
      value: 'موضة وأزياء',
    ),
    DropdownMenuItem(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('منتزهات وملاهي'),
          const SizedBox(
            width: 16,
          ),
          Icon(
            Icons.park_outlined,
            color: Color(0xFF006D41),
          ),
        ],
      ),
      value: 'منتزهات وملاهي',
    ),
    DropdownMenuItem(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('عرائس ومناسبات'),
          const SizedBox(
            width: 16,
          ),
          Icon(
            Icons.spa_outlined,
            color: Color(0xFF006D41),
          ),
        ],
      ),
      value: 'عرائس ومناسبات',
    ),
    DropdownMenuItem(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('حلويات ومعجنات'),
          const SizedBox(
            width: 16,
          ),
          Icon(
            Icons.icecream_outlined,
            color: Color(0xFF006D41),
          ),
        ],
      ),
      value: 'حلويات ومعجنات',
    ),
  ];

  String? _selectedCategory;

  bool _chooseSeconde = false;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('أضف إعلانك'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: DropdownButtonFormField(
                    isDense: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    items: items2,
                    hint: const Text('نوع الإعلان'),
                    selectedItemBuilder: (context) {
                      return items2.map((e) {
                        return e.child;
                      }).toList();
                    },
                    onChanged: (value) {
                      setState(() {
                        _selectedCategory = value;
                      });
                    },
                  )),
              const SizedBox(
                height: 16,
              ),
              if (_selectedCategory != null && _selectedCategory == 'مدينتي')
                Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: DropdownButtonFormField(
                          isDense: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          items: cityCategory,
                          hint: const Text('قسم الإعلان'),
                          selectedItemBuilder: (context) {
                            return cityCategory.map((e) {
                              return e.child;
                            }).toList();
                          },
                          onChanged: (value) {},
                        )),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: DropdownButtonFormField(
                          isDense: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          items: subCityCategory,
                          hint: const Text('القسم الفرعي'),
                          selectedItemBuilder: (context) {
                            return subCityCategory.map((e) {
                              return e.child;
                            }).toList();
                          },
                          onChanged: (value) {},
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              if (_selectedCategory != null && _selectedCategory == 'مهني')
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: AnimatedContainer(
                                margin: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: !_chooseSeconde
                                      ? Theme.of(context)
                                          .colorScheme
                                          .primary
                                          .withOpacity(0.3)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                duration: Duration(milliseconds: 500),
                                child: Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _chooseSeconde = false;
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(16),
                                      child: Text('ابحث عن وظيفة',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: AnimatedContainer(
                                margin: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: _chooseSeconde
                                      ? Theme.of(context)
                                          .colorScheme
                                          .primary
                                          .withOpacity(0.3)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                duration: Duration(milliseconds: 500),
                                child: Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _chooseSeconde = true;
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(16),
                                      child: Text(
                                        'ابحث عن موظف',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text('رقم الإعلان'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIconConstraints: BoxConstraints(
                      maxHeight: 35,
                      maxWidth: 35,
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Image.asset('assets/123.png',
                          height: 35,
                          width: 35,
                          color: Theme.of(context).colorScheme.outline),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  maxLines: 5,
                  maxLength: 200,
                  decoration: InputDecoration(
                    label: Text('وصف الإعلان'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text('السعر'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIconConstraints: BoxConstraints(
                      maxHeight: 35,
                      maxWidth: 35,
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Image.asset('assets/123.png',
                          height: 35,
                          width: 35,
                          color: Theme.of(context).colorScheme.outline),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: Text('رقم الهاتف'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: Text('المدينة'),
                    suffixIcon: Icon(Icons.location_on_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              //take image or choose from gallery button
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton.icon(
                                icon: const Icon(Icons.image_outlined),
                                onPressed: () {},
                                label: const Text('أختر من الاستوديو'),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: ElevatedButton.icon(
                                icon: const Icon(Icons.camera_alt_outlined),
                                onPressed: () {},
                                label: const Text('ألتقط صورة'),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Wrap(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              clipBehavior: Clip.antiAlias,
                              child: Image.network(
                                'https://cdn.gsmarena.com/pics/12/12/samsung-mobile-store/gsmarena_001.jpg',
                                fit: BoxFit.cover,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Container(
                              height: 100,
                              width: 100,
                              clipBehavior: Clip.antiAlias,
                              child: Image.network(
                                'https://www.bestmobile.pk/shop_images/ghouri-mobiles-6ejv.webp',
                                fit: BoxFit.cover,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Container(
                              height: 100,
                              width: 100,
                              clipBehavior: Clip.antiAlias,
                              child: Image.network(
                                'https://www.shoppingbazar.in/uploads/images/d3871213503f27bdbd604443b8aece711540542619.jpg',
                                fit: BoxFit.cover,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 32,
              ),
              FilledButton(
                style: FilledButton.styleFrom(
                  minimumSize: const Size(200, 40),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                  // dialog material 3
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Directionality(
                        textDirection: TextDirection.rtl,
                        child: AlertDialog(
                          actionsAlignment: MainAxisAlignment.start,
                          title: const Text('تم إضافة الإعلان'),
                          icon: const Icon(Icons.check_circle_outline,
                              size: 50, color: Colors.green),
                          content: const Text('تم إضافة إعلانك بنجاح'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('حسناً'),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: const Text('أضف الإعلان'),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
