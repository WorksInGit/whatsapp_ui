import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'WhatsApp',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25.sp),
        ),
        actions: [
          Icon(Icons.qr_code_scanner, size: 25.sp, color: Colors.white),
          SizedBox(
            width: 20.w,
          ),
          Icon(
            Icons.camera_alt_outlined,
            size: 25.sp,
            color: Colors.white,
          ),
          PopupMenuButton(
            color: Colors.black,
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 25.sp,
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                    child: Text(
                  'New group',
                  style: TextStyle(color: Colors.white, fontSize: 16.sp),
                )),
                PopupMenuItem(
                    child: Text('New broadcast',
                        style:
                            TextStyle(color: Colors.white, fontSize: 16.sp))),
                PopupMenuItem(
                    child: Text('Linked devices',
                        style:
                            TextStyle(color: Colors.white, fontSize: 16.sp))),
                PopupMenuItem(
                    child: Text('Starred messages',
                        style:
                            TextStyle(color: Colors.white, fontSize: 16.sp))),
                PopupMenuItem(
                    child: Text('Payments',
                        style:
                            TextStyle(color: Colors.white, fontSize: 16.sp))),
                PopupMenuItem(
                    child: Text('Settings',
                        style: TextStyle(color: Colors.white, fontSize: 16.sp)))
              ];
            },
          )
        ],
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: [
            Container(
              width: 350.w,
              height: 40.h,
              decoration: BoxDecoration(
                  color: HexColor('#0b141a'),
                  borderRadius: BorderRadius.circular(30)),
              child: Stack(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 40.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/icons/meta_logo.png'))),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: TextFormField(
                      decoration: InputDecoration(
                          label: Text('Ask Meta AI or Search'),
                          border: InputBorder.none,
                          labelStyle: TextStyle(color: HexColor('#81888e'))),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Row(
                children: [
                  Container(
                    width: 35.w,
                    height: 25.h,
                    decoration: BoxDecoration(
                        color: HexColor('#10352b'),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Text(
                      'All',
                      style: TextStyle(color: HexColor('#27b96a')),
                    )),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 55.w,
                    height: 25.h,
                    decoration: BoxDecoration(
                        color: HexColor('#10352b'),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Text(
                      'Unread',
                      style: TextStyle(color: HexColor('#27b96a')),
                    )),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 75.w,
                    height: 25.h,
                    decoration: BoxDecoration(
                        color: HexColor('#10352b'),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Text(
                      'Favourites',
                      style: TextStyle(color: HexColor('#27b96a')),
                    )),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                    width: 55.w,
                    height: 25.h,
                    decoration: BoxDecoration(
                        color: HexColor('#10352b'),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Text(
                      'Groups',
                      style: TextStyle(color: HexColor('#27b96a')),
                    )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(child: ListViewChats())
          ],
        ),
      ),
    );
  }
}

class ListViewChats extends StatefulWidget {
  const ListViewChats({super.key});

  @override
  State<ListViewChats> createState() => _ListViewChatsState();
}

class _ListViewChatsState extends State<ListViewChats> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Container(
          child: Card(
            color: Colors.transparent,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 25.sp,
                  child: Icon(Icons.person,size: 40.sp,color: Colors.white,)
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Zannan',
                      style: TextStyle(color: Colors.white,fontSize: 15.sp),
                    ),
                    Text('Hy how are you',style: TextStyle(color: HexColor('#6b747b')),)
                  ],
                ),
                SizedBox(
                  width: 130.w,
                ),
                Text('10:46 am',style: TextStyle(color: HexColor('#6b747b')),)
              ],
            ),
          ),
        );
      },
    );
  }
}
