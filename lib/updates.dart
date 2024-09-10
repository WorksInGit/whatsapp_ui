import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class Updates extends StatefulWidget {
  const Updates({super.key});

  @override
  State<Updates> createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Updates',
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
            SizedBox(
            width: 20.w,
          ),
          Icon(
            Icons.search,
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
                    'Status privacy',
                    style: TextStyle(color: Colors.white, fontSize: 16.sp),
                  )),
                  PopupMenuItem(
                      child: Text('Create channel',
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text(
                  'Status',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 25.sp,
                        backgroundColor: Colors.grey,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 40.sp,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 35,left: 35),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(40)),
                          child: Icon(Icons.add),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  child: CircleAvatar(
                    radius: 25.sp,
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 40.sp,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  child: CircleAvatar(
                    radius: 25.sp,
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 40.sp,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  child: CircleAvatar(
                    radius: 25.sp,
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 40.sp,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  child: CircleAvatar(
                    radius: 25.sp,
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 40.sp,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  child: CircleAvatar(
                    radius: 25.sp,
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 40.sp,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  child: CircleAvatar(
                    radius: 25.sp,
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 40.sp,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  child: CircleAvatar(
                    radius: 25.sp,
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 40.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 15),
            child: Row(
              children: [
                Text('Channels',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),)
              ],
            ),
          ),
          Expanded(child: ListViewUpdates())
        ],
      ),
    );
  }
}
class ListViewUpdates extends StatefulWidget {
  const ListViewUpdates({super.key});

  @override
  State<ListViewUpdates> createState() => _ListViewUpdatesState();
}

class _ListViewUpdatesState extends State<ListViewUpdates> {
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
                  backgroundColor: Colors.blue,
                  radius: 25.sp,
                  child: Icon(Icons.flutter_dash_outlined,size: 40.sp,color: Colors.white,)
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Flutter App Developers',
                      style: TextStyle(color: Colors.white,fontSize: 15.sp),
                    ),
                    Row(
                      children: [
                        Container(
                          child: Icon(Icons.photo,color: Colors.grey,),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Photo',style: TextStyle(color: HexColor('#6b747b')),),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 80.w,
                ),
                Column(
                  children: [
                    Text('Yesterday',style: TextStyle(color: HexColor('#6b747b')),),
                    Container(
                      width: 15.w,
                      height: 15.h,
                      decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(50)),
                      child: Center(child: Text('32',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),)),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

