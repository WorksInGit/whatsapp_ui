import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Calls',
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
                  'Clear call log',
                  style: TextStyle(color: Colors.white, fontSize: 16.sp),
                )),
                
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
                  'Favourites',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 5),
            child: Row(
              children: [
                Container(
                    width: 40.w,
                    height: 40.w,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(50)),
                    child: Icon(CupertinoIcons.heart_fill)),
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  'Add Favourite',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  'Recent',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Expanded(child: ListViewCalls())
        ],
      ),
    );
  }
}

class ListViewCalls extends StatefulWidget {
  const ListViewCalls({super.key});

  @override
  State<ListViewCalls> createState() => _ListViewCallsState();
}

class _ListViewCallsState extends State<ListViewCalls> {
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
                    child: Icon(
                      Icons.person,
                      size: 40.sp,
                      color: Colors.white,
                    )),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '+91 9746853848',
                      style: TextStyle(color: Colors.white, fontSize: 15.sp),
                    ),
                    Row(
                      children: [
                        Container(
                          child: Icon(
                            CupertinoIcons.arrow_up_right,
                            color: Colors.green,
                            size: 20,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '2 September, 1:07 pm',
                          style: TextStyle(color: HexColor('#6b747b')),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 120.w,
                ),
                Icon(Icons.phone,color: Colors.white,)
              ],
            ),
          ),
        );
      },
    );
  }
}
