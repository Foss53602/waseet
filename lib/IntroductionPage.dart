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
            title: 'تواصل فعّال',
            body:
                'يقدم تطبيق وسيط وسيلة سهلة وفعّالة للتواصل بين الأفراد الذين يحتاجون إلى أشياء معينة والذين يمتلكون تلك الأشياء، سواء كانت احتياجات شخصية أو فرص متنوعة',
            image: Padding(
              padding: const EdgeInsets.only(top: 64),
              child: SvgPicture.asset('assets/1.svg', fit: BoxFit.contain),
            ),
          ),
          PageViewModel(
            title: 'حدد موقعك قبل البدء',
            body:
                'بفضل تقنية تحديد المواقع، يمكنك البحث عن العروض والاحتياجات القريبة من موقعك الحالي، مما يجعل عملية البحث والتواصل أكثر ملائمة وفعالية',
            image: Padding(
              padding: const EdgeInsets.only(top: 64),
              child: SvgPicture.asset('assets/3.svg', fit: BoxFit.contain),
            ),
          ),
          PageViewModel(
            title: 'تبادل متبادل',
            body:
                'يسهّل تطبيق وسيط التبادل المتبادل بين المستخدمين، حيث يمكن لكل فرد أن يقدم مساعدة ويستفيد في آن واحد، ما يساهم في بناء مجتمع مترابط يعتمد على التعاون',
            image: Padding(
              padding: const EdgeInsets.only(top: 64),
              child: SvgPicture.asset('assets/2.svg'),
            ),
          ),
          PageViewModel(
            title: 'شارك ما لديك',
            body:
                'سواء كنت تمتلك أشياء تريد بيعها، أو تمتلك معرفة أو خبرة ترغب في تقديمها للآخرين، يتيح لك تطبيق وسيط فرصة مشاركة ما تمتلكه بسهولة',
            image: Padding(
              padding: const EdgeInsets.only(top: 64),
              child: SvgPicture.asset('assets/4.svg'),
            ),
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
