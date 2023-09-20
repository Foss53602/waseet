import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({super.key});

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: '',
            reverse: true,
            footer: Center(
              child: Text('شامل وبسيط', style: TextStyle(fontSize: 28)),
            ),
            bodyWidget: Text('الدليل الخدمي والتكافلي الأول',
                style: TextStyle(fontSize: 22)),
            image: Image.asset('assets/wasit.png'),
          ),
          PageViewModel(
            title: '',
            reverse: true,
            footer: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text('دليلك إلى الجميع', style: TextStyle(fontSize: 18)),
                  const SizedBox(width: 4),
                  Text('......'),
                  const SizedBox(width: 4),
                  Text('وسيط', style: TextStyle(fontSize: 28)),
                ],
              ),
            ),
            bodyWidget: Column(
              children: [
                Text('تجارة او وظيفة',
                    style: TextStyle(fontSize: 22, wordSpacing: 2)),
                Text('سياحة او خدمي',
                    style: TextStyle(fontSize: 22, wordSpacing: 2)),
                Text('مأجور أو مجاني',
                    style: TextStyle(fontSize: 22, wordSpacing: 2)),
              ],
            ),
            image: SvgPicture.asset('assets/1.svg', fit: BoxFit.contain),
          ),
          PageViewModel(
            title: '',
            reverse: true,
            footer: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text('دليلك الموثوق', style: TextStyle(fontSize: 18)),
                  const SizedBox(width: 4),
                  Text('......'),
                  const SizedBox(width: 4),
                  Text('وسيط', style: TextStyle(fontSize: 28)),
                ],
              ),
            ),
            bodyWidget: Column(
              children: [
                Text('إعلان بكافة التفاصيل',
                    style: TextStyle(fontSize: 22, wordSpacing: 2)),
                Text('تواصل مباشرة مع المعلن',
                    style: TextStyle(fontSize: 22, wordSpacing: 2)),
                Text('شهادة ذوي الخبرة',
                    style: TextStyle(fontSize: 22, wordSpacing: 2)),
              ],
            ),
            image: SvgPicture.asset('assets/2.svg'),
          ),
          PageViewModel(
            title: '',
            reverse: true,
            footer: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text('يشاركك الأجر', style: TextStyle(fontSize: 18)),
                  const SizedBox(width: 4),
                  Text('......'),
                  const SizedBox(width: 4),
                  Text('وسيط', style: TextStyle(fontSize: 28)),
                ],
              ),
            ),
            bodyWidget: Column(
              children: [
                Text('إذا كنت ذا يد عليا ولديك صدقة',
                    style: TextStyle(fontSize: 22, wordSpacing: 2)),
                Text('سنصلك بمن يستحقها',
                    style: TextStyle(fontSize: 22, wordSpacing: 2)),
                Text('ونحرص على خصوصيتكم',
                    style: TextStyle(fontSize: 22, wordSpacing: 2)),
              ],
            ),
            image: SvgPicture.asset('assets/3.svg'),
          ),
        ],
        onDone: () {
          Navigator.pop(context);
        },
        showSkipButton: true,
        skip: const Text('تخطي'),
        next: Text('التالي'),
        done: const Text('تم'),
      ),
    );
  }
}
