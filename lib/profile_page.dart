import 'package:flutter/material.dart';

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
            title: Text('الملف الشخصي'),
          ),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 32,
                ),
                CircleAvatar(
                  maxRadius: 60,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRij6dtiHizH96qpCOe8WeXXP3yLyQJkPdGVg&usqp=CAU'),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'محمد عبد الله',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      );
  }
}
