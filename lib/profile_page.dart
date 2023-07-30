import 'package:flutter/material.dart';
import 'package:store_design/login_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('ملفي الشخصي'),
        ),
        // tow tabs in the top of the screen (profile and notification)
        body: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              TabBar(
                tabs: [
                  Tab(text: 'الملف الشخصي', icon: Icon(Icons.person)),
                  Tab(
                      text: 'الإشعارات',
                      icon: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Icon(Icons.notifications),
                          Positioned(
                            top: -10,
                            left: -15,
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
                          ),
                        ],
                      )),
                ],
              ),
              Expanded(
                child: Container(
                  child: TabBarView(
                    children: [
                      // profile tab
                      Container(
                        child: Column(
                          children: [
                            Expanded(child: _drawProfile()),
                            Container(
                              padding: EdgeInsets.all(16),
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return LoginPage();
                                    },
                                  ));
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.red,
                                ),
                                icon: Icon(Icons.logout),
                                label: Text('تسجيل الخروج'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // notification tab
                      Container(
                        child: Center(
                          child: Text('الإشعارات'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _drawProfile() {
    return ListView(children: [
      SizedBox(height: 32),
      Center(
        child: CircleAvatar(
          radius: 80,
          backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRij6dtiHizH96qpCOe8WeXXP3yLyQJkPdGVg&usqp=CAU'),
        ),
      ),
      Container(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Text(
            'محمد عبدالله',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      SizedBox(height: 16),
      ListTile(
          leading: Icon(Icons.email),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
          title: Text('البريد الإلكتروني'),
          subtitle: Text('mohammedAbd@gmail.com')),
      ListTile(
          leading: Icon(Icons.phone),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
          title: Text('رقم الهاتف'),
          subtitle: Text('20123456789+')),
      ListTile(
          leading: Icon(Icons.location_on),
          title: Text('العنوان'),
          subtitle: Text('أعزاز - دوار الكف')),
      ListTile(
          leading: Icon(Icons.date_range),
          title: Text('تاريخ الميلاد'),
          subtitle: Text('01/01/1990')),
    ]);
  }
}
