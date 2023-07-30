import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  var listStoreImages = [
    'https://www.shoppingbazar.in/uploads/images/d3871213503f27bdbd604443b8aece711540542619.jpg',
    'https://www.bestmobile.pk/shop_images/ghouri-mobiles-6ejv.webp',
    'https://cdn.gsmarena.com/pics/12/12/samsung-mobile-store/gsmarena_001.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('متجر السعادة للكهربائيات'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 8,
              ),
              Container(
                height: 180,
                child: Swiper(
                  itemCount: 3,
                  autoplay: true,
                  duration: 1000,
                  autoplayDelay: 5000,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: NetworkImage(listStoreImages[index]),
                              fit: BoxFit.cover)),
                    );
                  },
                  viewportFraction: 0.8,
                  scale: 0.9,
                ),
              ), //
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                    'متجر متخصص ببيع وشراء الأجهزة الجديدة, وصيانة الأجهزة المستعملة بأسعار منافسة وجودة عالية, وصف للعنصر المحدد بحيث لا يتجاوز 5 اسطر من اجل سهولة القراءة , لا سيما ان هذه الفقرة ليس لها اولوية عالية بالقراءة.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 17)),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'المعلومات الأساسية',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.access_time_rounded,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      title: Text(
                        'منذ شهر تقريباً',
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.location_on_outlined,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      title: Text(
                        'الباب - دوار الراعي',
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ),
                      title: Text(
                        '079 999 9999',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Table(
                  columnWidths: {
                    0: FractionColumnWidth(0.25),
                    1: FractionColumnWidth(0.75)
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  border:
                      TableBorder.all(borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).colorScheme.secondary,
                      ),
                  children: [
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'عدد الغرف',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '3',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'عدد الشرف',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '2',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'مساحة',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '100 م',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'مفروش',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.check, color: Colors.green),
                      )
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'ارضية',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'غرانيت مع عازل حرارة',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "الإتجاه",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'غربي - قبلي',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "عازل خارجي",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.close, color: Colors.red),
                      )
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "تاريخ الإنشاء",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "15/7/2023",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "ملاحظات",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "ويمكن للمدير إضافة هذه الحقول عىل أي مستوى من التصانيف )لمستوى األعىل أو  ً عند إضافة محتوى األدنى( حيث أنه عند إضافتها للمستوى األعىل ستظهر تلقائيا مستوى األدنى، فمثال في التجارة يمكن إضافة حقل اسمه السعر وسيظهر الحقل عند  جميع األبناء التابعني للتجارة مثل العقارات",
                        ),
                      )
                    ]),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
