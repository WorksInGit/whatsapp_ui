import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_ui/updates.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Communities',
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
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 60.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                          child: FaIcon(
                        FontAwesomeIcons.peopleGroup,
                        color: Colors.white,
                        size: 35,
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 50),
                      child: Container(
                        width: 20.w,
                        height: 20.h,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(40)),
                        child: Icon(Icons.add),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  'New Community',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(child: ListViewUpdates())
        ],
      ),
    );
  }
}
