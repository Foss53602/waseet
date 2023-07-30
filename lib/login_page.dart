import 'package:flutter/material.dart';
import 'package:store_design/create_account.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('تسجيل الدخول'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 16,
              ),
              Image.asset('assets/waseet.png', width: 200),
              SizedBox(
                height: 64,
              ),
              Text(
                'تسجيل الدخول',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder(),
                    labelText: 'البريد الإلكتروني',
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(),
                    labelText: 'كلمة المرور',
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text('نسيت كلمة المرور؟'),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              FilledButton(
                onPressed: () {},
                child: Text('تسجيل الدخول'),
              ),
              SizedBox(
                height: 64,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('ليس لديك حساب؟'),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CreateAccount(),
                        ),
                      );
                    },
                    child: Text('إنشاء حساب جديد'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
