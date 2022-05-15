import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true,
          home: MyHomePage(),
        );
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dialogue'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    showDialogueWidget(context);
                  },
                  child: const Text('Click')),
            ],
          ),
        ));
  }
}

showDialogueWidget(BuildContext context) {
  AlertDialog alert = AlertDialog(
    buttonPadding: EdgeInsets.zero,
    titlePadding: EdgeInsets.zero,
    contentPadding: EdgeInsets.zero,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    title: Align(
      alignment: Alignment.topRight,
      child: Container(
        height: 35.h,
        width: 40.w,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 247, 244, 245),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), topRight: Radius.circular(30)),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.close_rounded,
            size: 20.sp,
            color: Colors.grey,
          ),
        ),
      ),
    ),
    content: Text(
      'Add Certificate',
      style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(255, 245, 51, 116)),
      textAlign: TextAlign.center,
    ),
    actions: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Divider(
            height: 20.h,
            thickness: 2,
            indent: 0,
            endIndent: 0,
            color: const Color.fromARGB(255, 238, 236, 236),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 10.w,
              ),
              Text(
                'Certificate :  ',
                style: TextStyle(
                    fontSize: 18.sp,
                    //fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 143, 140, 140)),
              ),
              SizedBox(
                height: 32.h,
                width: 60.w,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    hintText: "Bsc",
                    hintStyle: TextStyle(fontSize: 17.sp),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(color: Colors.grey, width: 1.w)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(color: Colors.grey, width: 1.w)),
                  ),
                  onChanged: (value) {},
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              SizedBox(
                height: 30.h,
                width: 75.w,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Upload',
                    style: TextStyle(color: Colors.grey, fontSize: 16.sp),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: const BorderSide(color: Colors.grey)))),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt_outlined,
                  color: const Color.fromARGB(255, 202, 201, 201),
                  size: 30.sp,
                ),
              )
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            children: [
              Container(
                  height: 52.h,
                  width: 290.w,
                  decoration: const BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Submit',
                        style: TextStyle(fontSize: 18.sp, color: Colors.white),
                      ))),
            ],
          ),
        ],
      ),
    ],
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
}
