import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText2: TextStyle(
              color: Colors.white,
              fontSize: 19,
              fontFamily: "L"
            ),
            headline1: TextStyle(
              color: Colors.white,
              fontSize: 45,
              fontFamily: "L"
            ),
            ),
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.c ccccc
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainMenu(),
    );
  }
}
class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/mainMenu.jpg"
            ),
            fit: BoxFit.cover
            )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Container(
                margin: EdgeInsets.only(bottom: 0),
                child: Text("OS",
                style: TextStyle(
                  fontFamily: "W",
                  fontSize: 120
                ),),
              ),
              Container(
                margin: EdgeInsets.only(top: 0),
                child: Text("Simulator",
                style: TextStyle(
                  fontFamily: "M",
                  fontSize: 50
                ),),
              ),
              Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => cpuSheduling()));
                    },
                                      child: Container(
                      height: 120,
                        width: 160,
                        // decoration: BoxDecoration(
                        //   boxShadow: [
                        //     BoxShadow(
                        //       color: Colors.black,
                        //       blurRadius: 20,
                        //       spreadRadius: 0,
                        //       offset: Offset(
                        //         5,5
                        //       )
                        //       )
                        //       ]
                        //   ),
                        child: ClipRect(
                          // borderRadius: BorderRadius.circular(25),
                              // topLeft: Radius.circular(25)
                            // ),
                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.only(
                          //     topLeft: Radius.circular(25)
                          //   )
                          // ),
                          // color: Colors.lightBlue.shade100,
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 10,
                                sigmaY: 10
                              ) ,
                                child: Card(
                                  // decoration: BoxDecoration(
                                    // shadowColor: Colors.black,
                                    
                                    color: Colors.grey.shade200.withOpacity(0.5),
                                    shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(25)
                                    ),
                                    side: BorderSide(
                                      color: Colors.white.withOpacity(0.5),
                                      width: 1
                                    )
                                  ),
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("CPU",
                                    style: Theme.of(context).textTheme.bodyText2
                                    ),
                                    Text("Sheduling",
                                    style: Theme.of(context).textTheme.bodyText2
                                    ),
                                    Text("Algorithms",
                                    style: Theme.of(context).textTheme.bodyText2
                                    ),
                                  ],
                                ),
                              ),
                                                        ),
                            ))),
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => processSync()));
                    },
                    child: Container(
                      height: 120,
                        width: 160,
                        child: ClipRect(
                          // borderRadius: BorderRadius.circular(25),
                              // topLeft: Radius.circular(25)
                            // ),
                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.only(
                          //     topLeft: Radius.circular(25)
                          //   )
                          // ),
                          // color: Colors.lightBlue.shade100,
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 10,
                                sigmaY: 10
                              ) ,
                                child: Card(
                                  // decoration: BoxDecoration(
                                    color: Colors.grey.shade200.withOpacity(0.5),
                                    shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(25)
                                    ),
                                    side: BorderSide(
                                      color: Colors.white.withOpacity(0.5),
                                      width: 1
                                    )
                                  ),
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Process",
                                    style: Theme.of(context).textTheme.bodyText2
                                    ),
                                    Text("Synchronization",
                                    style: Theme.of(context).textTheme.bodyText2
                                    ),
                                    Text("(Semaphore)",
                                    style: Theme.of(context).textTheme.bodyText2
                                    ),
                                  ],
                                ),
                              ),
                                                        ),
                            ))),
                  ),
                  Spacer()
                ],
              ),
              SizedBox(height: 5,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  GestureDetector(
                    onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => deadlockDet()));
                    },
                                      child: Container(
                      height: 120,
                        width: 160,
                        child: ClipRect(
                          // borderRadius: BorderRadius.circular(25),
                              // topLeft: Radius.circular(25)
                            // ),
                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.only(
                          //     topLeft: Radius.circular(25)
                          //   )
                          // ),
                          // color: Colors.lightBlue.shade100,
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 10,
                                sigmaY: 10
                              ) ,
                                child: Card(
                                  // decoration: BoxDecoration(
                                    color: Colors.grey.shade200.withOpacity(0.5),
                                    shape: RoundedRectangleBorder(
                                    // borderRadius: BorderRadius.only(
                                    //   topLeft: Radius.circular(25)
                                    // ),
                                    side: BorderSide(
                                      color: Colors.white.withOpacity(0.5),
                                      width: 1
                                    )
                                  ),
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Deadlock",
                                    style: Theme.of(context).textTheme.bodyText2
                                    ),
                                    // Text("Sheduling",
                                    // style: Theme.of(context).textTheme.bodyText2
                                    // ),
                                    Text("Detection",
                                    style: Theme.of(context).textTheme.bodyText2
                                    ),
                                  ],
                                ),
                              ),
                                                        ),
                            ))),
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                        builder: (context) => bankers()));
                    },
                                      child: Container(
                      height: 120,
                        width: 160,
                        child: ClipRect(
                          // borderRadius: BorderRadius.circular(25),
                              // topLeft: Radius.circular(25)
                            // ),
                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.only(
                          //     topLeft: Radius.circular(25)
                          //   )
                          // ),
                          // color: Colors.lightBlue.shade100,
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 10,
                                sigmaY: 10
                              ) ,
                                child: Card(
                                  // decoration: BoxDecoration(
                                    color: Colors.grey.shade200.withOpacity(0.5),
                                    shape: RoundedRectangleBorder(
                                    // borderRadius: BorderRadius.only(
                                    //   topRight: Radius.circular(25)
                                    // ),
                                    side: BorderSide(
                                      color: Colors.white.withOpacity(0.5),
                                      width: 1
                                    )
                                  ),
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Bankers",
                                    style: Theme.of(context).textTheme.bodyText2
                                    ),
                                    // Text("Synchronization",
                                    // style: Theme.of(context).textTheme.bodyText2
                                    // ),
                                    Text("Algorithms",
                                    style: Theme.of(context).textTheme.bodyText2
                                    ),
                                  ],
                                ),
                              ),
                                                        ),
                            ))),
                  ),
                  Spacer()
                ],
              ),
              SizedBox(height: 5,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  Container(
                    height: 120,
                      width: 160,
                      child: ClipRect(
                        // borderRadius: BorderRadius.circular(25),
                            // topLeft: Radius.circular(25)
                          // ),
                        // shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.only(
                        //     topLeft: Radius.circular(25)
                        //   )
                        // ),
                        // color: Colors.lightBlue.shade100,
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 10,
                              sigmaY: 10
                            ) ,
                              child: Card(
                                // decoration: BoxDecoration(
                                  color: Colors.grey.shade200.withOpacity(0.5),
                                  shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(25)
                                  ),
                                  side: BorderSide(
                                    color: Colors.white.withOpacity(0.5),
                                    width: 1
                                  )
                                ),
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Fitting",
                                  style: Theme.of(context).textTheme.bodyText2
                                  ),
                                  // Text("Sheduling",
                                  // style: Theme.of(context).textTheme.bodyText2
                                  // ),
                                  Text("Algorithms",
                                  style: Theme.of(context).textTheme.bodyText2
                                  ),
                                ],
                              ),
                            ),
                                                      ),
                          ))),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => pageReplacement()));
                    },
                                      child: Container(
                      height: 120,
                        width: 160,
                        child: ClipRect(
                          // borderRadius: BorderRadius.circular(25),
                              // topLeft: Radius.circular(25)
                            // ),
                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.only(
                          //     topLeft: Radius.circular(25)
                          //   )
                          // ),
                          // color: Colors.lightBlue.shade100,
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 10,
                                sigmaY: 10
                              ) ,
                                child: Card(
                                  // decoration: BoxDecoration(
                                    color: Colors.grey.shade200.withOpacity(0.5),
                                    shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(25)
                                    ),
                                    side: BorderSide(
                                      color: Colors.white.withOpacity(0.5),
                                      width: 1
                                    )
                                  ),
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Page",
                                    style: Theme.of(context).textTheme.bodyText2
                                    ),
                                    Text("Replacement",
                                    style: Theme.of(context).textTheme.bodyText2
                                    ),
                                    Text("Algorithms",
                                    style: Theme.of(context).textTheme.bodyText2
                                    ),
                                  ],
                                ),
                              ),
                                                        ),
                            ))),
                  ),
                  Spacer()
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
class cpuSheduling extends StatefulWidget {
  @override
  _cpuShedulingState createState() => _cpuShedulingState();
}

class _cpuShedulingState extends State<cpuSheduling> {
  String algo= "FCFS";
  String type= "Non-P";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   // elevation: 0.0,
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back,color: Colors.white),
      //     ),),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/cpuSheduling.png"
            ),
            fit: BoxFit.cover
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios,color: Colors.white
                  ),
                  iconSize: 30,),
              ),
              SizedBox(height: 10,),
              Text(
                "CPU",
                style: Theme.of(context).textTheme.headline1,
                ),
              Text("Sheduling",
              style: Theme.of(context).textTheme.headline1,
              ),
              Text("Algorithms",
              style: Theme.of(context).textTheme.headline1,
              ),
              Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  GestureDetector(
                    onTap: (){setState((){
                      algo= "FCFS";
                      print(algo);

                    });},
                                      child: Container(
                      height: 120,
                        width: 160,
                        // decoration: BoxDecoration(
                        //   boxShadow: [
                        //     BoxShadow(
                        //       color: Colors.black,
                        //       blurRadius: 20,
                        //       spreadRadius: 0,
                        //       offset: Offset(
                        //         5,5
                        //       )
                        //       )
                        //       ]
                        //   ),
                        child: ClipRect(
                          // borderRadius: BorderRadius.circular(25),
                              // topLeft: Radius.circular(25)
                            // ),
                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.only(
                          //     topLeft: Radius.circular(25)
                          //   )
                          // ),
                          // color: Colors.lightBlue.shade100,
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 10,
                                sigmaY: 10
                              ) ,
                                child: Card(
                                  // decoration: BoxDecoration(
                                    // shadowColor: Colors.black,
                                    // sinle line condition or else ka matlab ha :
                                    color: algo == "FCFS" ?  Colors.grey.shade200.withOpacity(0.5):Colors.grey.shade200.withOpacity(0.25),
                                    shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(25)
                                    ),
                                    side: BorderSide(
                                      color: Colors.white.withOpacity(0.5),
                                      width: 1
                                    )
                                  ),
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("First Come",
                                    style: Theme.of(context).textTheme.bodyText2
                                    ),
                                    // Text("Sheduling",
                                    // style: Theme.of(context).textTheme.bodyText2
                                    // ),
                                    Text("First Serve",
                                    style: Theme.of(context).textTheme.bodyText2
                                    ),
                                  ],
                                ),
                              ),
                                                        ),
                            ))),
                  ),
                  SizedBox(width: 2,),
                  GestureDetector(
                    onTap: (){setState(() {
                      algo= "SJF";
                      print(algo);
                    });},
                                      child: Container(
                      height: 120,
                        width: 160,
                        child: ClipRect(
                          // borderRadius: BorderRadius.circular(25),
                              // topLeft: Radius.circular(25)
                            // ),
                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.only(
                          //     topLeft: Radius.circular(25)
                          //   )
                          // ),
                          // color: Colors.lightBlue.shade100,
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 10,
                                sigmaY: 10
                              ) ,
                                child: Card(
                                  // decoration: BoxDecoration(
                                    color: algo == "SJF" ?  Colors.grey.shade200.withOpacity(0.5):Colors.grey.shade200.withOpacity(0.25),
                                    shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(25)
                                    ),
                                    side: BorderSide(
                                      color: Colors.white.withOpacity(0.5),
                                      width: 1
                                    )
                                  ),
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Shortest",
                                    style: Theme.of(context).textTheme.bodyText2
                                    ),
                                    // Text("Synchronization",
                                    // style: Theme.of(context).textTheme.bodyText2
                                    // ),
                                    Text("Job First",
                                    style: Theme.of(context).textTheme.bodyText2
                                    ),
                                  ],
                                ),
                              ),
                                                        ),
                            ))),
                  ),
                  Spacer()
                ],
              ),
              SizedBox(height: 5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  GestureDetector(
                    onTap: (){setState(() {
                      algo= "P";
                      print(algo);
                    });},
                                      child: Container(
                      height: 120,
                        width: 160,
                        child: ClipRect(
                          // borderRadius: BorderRadius.circular(25),
                              // topLeft: Radius.circular(25)
                            // ),
                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.only(
                          //     topLeft: Radius.circular(25)
                          //   )
                          // ),
                          // color: Colors.lightBlue.shade100,
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 10,
                                sigmaY: 10
                              ) ,
                                child: Card(
                                  // decoration: BoxDecoration(
                                    color: algo == "P" ?  Colors.grey.shade200.withOpacity(0.5):Colors.grey.shade200.withOpacity(0.25),
                                    shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(25)
                                    ),
                                    side: BorderSide(
                                      color: Colors.white.withOpacity(0.5),
                                      width: 1
                                    )
                                  ),
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Priority",
                                    style: Theme.of(context).textTheme.bodyText2
                                    ),
                                    // Text("Sheduling",
                                    // style: Theme.of(context).textTheme.bodyText2
                                    // ),
                                    Text("Sheduling",
                                    style: Theme.of(context).textTheme.bodyText2
                                    ),
                                  ],
                                ),
                              ),
                                                        ),
                            ))),
                  ),
                  SizedBox(width: 2,),
                  GestureDetector(
                    onTap: (){setState(() {
                      algo= "RR";
                      print(algo);
                    });},
                                      child: Container(
                      height: 120,
                        width: 160,
                        child: ClipRect(
                          // borderRadius: BorderRadius.circular(25),
                              // topLeft: Radius.circular(25)
                            // ),
                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.only(
                          //     topLeft: Radius.circular(25)
                          //   )
                          // ),
                          // color: Colors.lightBlue.shade100,
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 10,
                                sigmaY: 10
                              ) ,
                                child: Card(
                                  // decoration: BoxDecoration(
                                    color: algo == "RR" ?  Colors.grey.shade200.withOpacity(0.5):Colors.grey.shade200.withOpacity(0.25),
                                    shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(25)
                                    ),
                                    side: BorderSide(
                                      color: Colors.white.withOpacity(0.5),
                                      width: 1
                                    )
                                  ),
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Round",
                                    style: Theme.of(context).textTheme.bodyText2
                                    ),
                                    // Text("Replacement",
                                    // style: Theme.of(context).textTheme.bodyText2
                                    // ),
                                    Text("Robin",
                                    style: Theme.of(context).textTheme.bodyText2
                                    ),
                                  ],
                                ),
                              ),
                              ),
                            ))),
                  ),
                  Spacer()
                ],
              ),
              Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  GestureDetector(
                    onTap: (){setState(() {
                      type= "Non-P";
                      print(type);
                    });},
                                      child: Container(
                      height: 60,
                        width: 160,
                        child: ClipRect(
                          // borderRadius: BorderRadius.circular(25),
                              // topLeft: Radius.circular(25)
                            // ),
                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.only(
                          //     topLeft: Radius.circular(25)
                          //   )
                          // ),
                          // color: Colors.lightBlue.shade100,
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 10,
                                sigmaY: 10
                              ) ,
                                child: Card(
                                  // decoration: BoxDecoration(
                                    color: type == "Non-P" ?  Colors.grey.shade200.withOpacity(0.5):Colors.grey.shade200.withOpacity(0.35),
                                    shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(22),
                                      topLeft: Radius.circular(22)
                                    ),
                                    side: BorderSide(
                                      color: Colors.white.withOpacity(0.5),
                                      width: 1
                                    )
                                  ),
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Non-Preemptive",
                                    style: Theme.of(context).textTheme.bodyText2
                                    ),
                                    // Text("Sheduling",
                                    // style: Theme.of(context).textTheme.bodyText2
                                    // ),
                                    // Text("Sheduling",
                                    // style: Theme.of(context).textTheme.bodyText2
                                    // ),
                                  ],
                                ),
                              ),
                                                        ),
                            ))),
                  ),
                  SizedBox(width: 2,),
                  GestureDetector(
                    onTap: (){setState(() {
                      type= "P";
                      print(type);
                    });},
                                      child: Container(
                      height: 60,
                        width: 160,
                        child: ClipRect(
                          // borderRadius: BorderRadius.circular(25),
                              // topLeft: Radius.circular(25)
                            // ),
                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.only(
                          //     topLeft: Radius.circular(25)
                          //   )
                          // ),
                          // color: Colors.lightBlue.shade100,
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 10,
                                sigmaY: 10
                              ) ,
                                child: Card(
                                  // decoration: BoxDecoration(
                                    color: type == "P" ?  Colors.grey.shade200.withOpacity(0.5):Colors.grey.shade200.withOpacity(0.35),
                                    shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(22),
                                      topRight: Radius.circular(22)
                                    ),
                                    side: BorderSide(
                                      color: Colors.white.withOpacity(0.5),
                                      width: 1
                                    )
                                  ),
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Preemptive",
                                    style: Theme.of(context).textTheme.bodyText2
                                    ),
                                    // Text("Replacement",
                                    // style: Theme.of(context).textTheme.bodyText2
                                    // ),
                                    // Text("Robin",
                                    // style: Theme.of(context).textTheme.bodyText2
                                    // ),
                                  ],
                                ),
                              ),
                              ),
                            ))),
                  ),
                  Spacer()
                ],
              ),
              Spacer(),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => algoDetails(algo: algo, type: type)));
                },
                              child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(right: 5),
                      height: 50,
                        width: 160,
                        child: Card(
                          
                          // decoration: BoxDecoration(
                            color: Colors.blue[800],
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15
                              // bottomLeft: Radius.circular(22),
                              // bottomRight: Radius.circular(22),
                              // topRight: Radius.circular(22),
                              // topLeft: Radius.circular(22)
                            ),
                            side: BorderSide(
                              color: Colors.white.withOpacity(0.5),
                              width: 2
                            )
                          ),
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Start Sheduling",
                            style: Theme.of(context).textTheme.bodyText2
                            ),
                            // Text("Replacement",
                            // style: Theme.of(context).textTheme.bodyText2
                            // ),
                            // Text("Robin",
                            // style: Theme.of(context).textTheme.bodyText2
                            // ),
                          ],
                        ),
                          ),
                          )),
                  ),
              ),
                SizedBox(height: 10)
            ],),),
      ),
    );
  }
}
class algoDetails extends StatefulWidget {
  final String algo; 
  final String type;
  algoDetails({
    Key key, @required this.algo, this.type 
  }) : super(key: key);
  @override
  _algoDetailsState createState() => _algoDetailsState();
}

class _algoDetailsState extends State<algoDetails> {
  final process = TextEditingController();
  final at = TextEditingController();
  final bt = TextEditingController();
  final p = TextEditingController();
  bool ex = false;
  List list= [];
  void kchbhi(){
    if(
      process.text != "" && at.text != "" && bt.text != ""
      ) // first if cond 
      {
        if(
          widget.algo != "P"
        ) // if in first if
        {
          setState(() {
            ex = false;
            list.add({
              "process": process.text,
              "ariival time": at.text,
              "burst time": bt.text,
              "priority": null
            }); // list add khtm
            print(list);
          });
          
        } // second if cond
        else{
          if(
            p.text != ""
          ){
          setState((){
            list.add(
              {
              "process": process.text,
              "ariival time": at.text,
              "burst time": bt.text,
              "priority": p.text
            });
          });
        } else{
          setState(() {
            ex = true;
          });
        }} // second if ka else
    } // first if 
    else{
      setState(() {
        ex = true;
      });
    } // first if ka else
  }
  Widget cardContainer(item){
    return Card(
                  color: Colors.grey[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                      color: Colors.white,
                      width: 1)),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(45, 12, 45, 12),
                        child: Column(
                          children: [
                            Text(item["process"]),
                            Text(item["ariival time"]),
                            Text(item["burst time"]),
                            item["priority"] != null ? 
                            Text(item["priority"]) : Text(""),
                          ],
                        ),
                      ),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[900]
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios,color: Colors.white
                  ),
                  iconSize: 30,)
              ),
              widget.algo == "FCFS" ? 
              Column(
                children: [
                  Text("First Come",
                  style: Theme.of(context).textTheme.headline1,
                  ),
                  Text("First Serve",
                  style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              ) : widget.algo == "SJF" ?
              Column(
                children: [
                  Text("Shortest",
                  style: Theme.of(context).textTheme.headline1,
                  ),
                  Text("Job First",
                  style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              ) : widget.algo == "RR" ?
              Column(
                children: [
                  Text("Round",
                  style: Theme.of(context).textTheme.headline1,
                  ),
                  Text("Robin",
                  style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              ) : widget.algo == "P" ?
              Column(
                children: [
                  Text("Priority",
                  style: Theme.of(context).textTheme.headline1,
                  ),
                  Text("Sheduling",
                  style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              ) : Text(" "),
              SizedBox(height: 10),
              widget.type == "Non-P" ?
              Text("Non-Preemptive") : 
              Text("Preemptive"),
              SizedBox(height: 20),
              Container(
                child: Card(
                  color: Colors.grey[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                      color: Colors.white,
                      width: 1)),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(45, 12, 45, 12),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 60, 0),
                          child: Column(
                            children: [
                              TextField(
                                controller: process,
                                style: Theme.of(context).textTheme.bodyText2,
                                decoration: InputDecoration(
                                  hintText: "Process Name",
                                  hintStyle: Theme.of(context).textTheme.bodyText2,
                                ),
                              ),
                              TextField(
                                controller: at,
                                style: Theme.of(context).textTheme.bodyText2,
                                decoration: InputDecoration(
                                  hintText: "Arrival Time",
                                  hintStyle: Theme.of(context).textTheme.bodyText2,
                                ),
                              ),
                              TextField(
                                controller: bt,
                                style: Theme.of(context).textTheme.bodyText2,
                                decoration: InputDecoration(
                                  hintText: "Burst Time",
                                  hintStyle: Theme.of(context).textTheme.bodyText2,
                                ),
                              ),
                              widget.algo == "P" ?
                              TextField(
                                controller: p,
                                style: Theme.of(context).textTheme.bodyText2,
                                decoration: InputDecoration(
                                  hintText: "Priority",
                                  hintStyle: Theme.of(context).textTheme.bodyText2,
                                ) ,
                              ): Text(" "),
                            ],
                          ),
                        ),
                      ],),),
                ),
              ),
              SizedBox(height: 30),
              Card(
                color: Colors.grey[900],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side: BorderSide(
                    color: Colors.white,
                  width: 2),
                ),
                  child: IconButton(
                    onPressed: kchbhi,
                  icon: Icon(Icons.exposure_plus_1, color: Colors.white),
                  iconSize: 50,
                ),
              ),
              SizedBox(height: 6),
              ex ? Text("Fill the empty fields"): Text(" "),
              list.isEmpty ? Text("") : Expanded(
                              child: ListView(
                  children: list.map((item) => cardContainer(item)).toList()
                ),
              ),
              SizedBox(height: 3,),
              Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(right: 5),
                      height: 50,
                        width: 160,
                        child: Card(
                            color: Colors.grey[800],
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15
                            ),
                            side: BorderSide(
                              color: Colors.white.withOpacity(0.5),
                              width: 1
                            )
                          ),
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Start Simulation",
                            style: Theme.of(context).textTheme.bodyText2
                            ),
                          ],
                        ),
                          ),
                          )),
                  ),
                  SizedBox(height: 10),
            ],
          ),),
      ),
    );
  }
}
class processSync extends StatefulWidget {
  @override
  _processSyncState createState() => _processSyncState();
}

class _processSyncState extends State<processSync> {
  final ip = TextEditingController();
  final pp = TextEditingController();
  bool ex = false;
  List list= [];
  void pfunc(){
    if(
      pp.text != "" && ip.text != ""
    )
    {
      setState((){
        ex = false;
        list.add({
          "Initial processes": ip.text,
          "Post processes": pp.text,
        });
        print(list);
      });
    } 
    else{
      ex = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/process.jpg"
            ),
            fit: BoxFit.cover
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Process",
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                "Synchronization",
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                "(Semaphore)",
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.fromLTRB(90, 12, 90, 12),
                child: Column(
                  children: [
                    TextField(
                      controller: ip,
                      style:Theme.of(context).textTheme.bodyText2,
                      decoration: InputDecoration(
                        hintText: "Initial Processes",
                        hintStyle: Theme.of(context).textTheme.bodyText2,
                      ),),
                    TextField(
                      controller: pp,
                      style:Theme.of(context).textTheme.bodyText2,
                      decoration: InputDecoration(
                        hintText: "Post Processes",
                        hintStyle: Theme.of(context).textTheme.bodyText2,
                      ),)
                  ],),),
                  Spacer(),
                  Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(right: 5),
                      height: 50,
                        width: 160,
                        child: Card(
                            color: Colors.blueAccent[400],
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15
                            ),
                            side: BorderSide(
                              color: Colors.white.withOpacity(0.5),
                              width: 1
                            )
                          ),
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Start Simulation",
                            style: Theme.of(context).textTheme.bodyText2
                            ),
                          ],
                        ),
                          ),
                          )),
                  ),
              SizedBox(height:30),
          ],),),
      ),
    );
  }
}
class pageReplacement extends StatefulWidget {
  @override
  _pageReplacementState createState() => _pageReplacementState();
}

class _pageReplacementState extends State<pageReplacement> {
  final st= TextEditingController();
  String type= "FIFO";
  bool ex = false;
  List list=[];

  void kch(){
    if(
      st.text != ""
    ){
      setState(() {
        ex = false;
        list.add(
          {
            "string" : st.text
          }
        );
      });
    } else{
      ex = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/pageRep.jpg"
            ),
            fit: BoxFit.cover,
          ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height:20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton( 
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),),
                ),
                SizedBox(height: 20),
                Text("Page",
                style: Theme.of(context).textTheme.headline1,),
                Text("Replacement",
                style: Theme.of(context).textTheme.headline1,),
                Text("Algorithms",
                style: Theme.of(context).textTheme.headline1,),
                SizedBox(height: 50),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[ 
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          type = "FIFO";
                        });
                      },
                                          child: Container(
                        child: Card(
                          color: type == "FIFO" ? Colors.grey[200].withOpacity(0.5) : Colors.grey[200].withOpacity(0.35),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomLeft: Radius.circular(22),
                            ),
                            side: BorderSide(
                              color: Colors.white.withOpacity(0.5),
                              width: 1 ),),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Text("FIFO",
                                    style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ],
                                ),),),
                                ),
                    ),
                              SizedBox(width: 5),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    type = "Optimal";
                                  });
                                },
                                                              child: Container(
                                    child: Card(
                                    color: type == "Optimal" ? Colors.grey[200].withOpacity(0.5) : Colors.grey[200].withOpacity(0.35),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.white.withOpacity(0.5),
                                      width: 1),),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          children: [
                                            Text("Optimal",
                                            style: Theme.of(context).textTheme.bodyText2,
                                            ),
                                          ],
                                        ),),
                                    ),
                                    ),
                              ),
                                  SizedBox(width:5),
                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        type = "LRU";
                                      });
                                    },
                                                                      child: Container(
                                    child: Card(
                                    color: type == "LRU" ? Colors.grey[200].withOpacity(0.5) : Colors.grey[200].withOpacity(0.35),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:BorderRadius.only(
                                        topRight: Radius.circular(22),
                                        bottomRight: Radius.circular(22), ),
                                      side: BorderSide(color: Colors.white.withOpacity(0.5),
                                      width: 1),),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          children: [
                                            Text("LRU",
                                            style: Theme.of(context).textTheme.bodyText2,
                                            ),
                                          ],
                                        ),),
                                    ),
                                    ),
                                  ),
                    ],
                  ),
                  SizedBox(height:50),
                  Padding(
                padding: EdgeInsets.fromLTRB(95, 12, 95, 12),
                child: Column(
                  children: [
                    TextField(
                      controller: st,
                      style:Theme.of(context).textTheme.bodyText2,
                      decoration: InputDecoration(
                        hintText: "Input String",
                        hintStyle: Theme.of(context).textTheme.bodyText2,
                      ), ),
                  ],),),
                  SizedBox(height: 20),
                  ex ? Text("Fill the empty field") : Text(" "),
                  SizedBox(height:150),
                   Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(right: 8),
                      height: 50,
                        width: 160,
                        child: Card(
                            color: Colors.blueAccent[400],
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15
                            ),
                            side: BorderSide(
                              color: Colors.white.withOpacity(0.5),
                              width: 1
                            )
                          ),
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Start Simulation",
                            style: Theme.of(context).textTheme.bodyText2
                            ),
                          ],
                        ),
                          ),
                          )),
                  ),
              ],
            ),),
        ),
      );
  }
}
class deadlockDet extends StatefulWidget {
  @override
  _deadlockDetState createState() => _deadlockDetState();
}

class _deadlockDetState extends State<deadlockDet> {
  final no_p = TextEditingController();
  final startedge = TextEditingController();
  final endedge = TextEditingController();
  List list = [];
  bool  ex = false;

  Text addfunc(){
    if(no_p.text != ""){
      if ( startedge.text != "" && endedge.text != "" ){
        setState(() {
          ex = false;
          list.add(
          {
            "startEdge": startedge.text,
            "endEdge": endedge.text
          }
        );
        print(list);
        });
      } else{
        setState(() {
          ex= true;
        });
      } //second if
    } else{
      setState(() {
        ex= true;
      });
    }// first if
  }

Widget cardContainer(item){
  return Card(
    color: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
      side: BorderSide(
        width: 1,
        color: Colors.white)),
        child: Padding(
          padding: EdgeInsets.fromLTRB(45, 12, 45, 12),
          child: Column(
            children: [
              Text(item["startEdge"]),
              Text(item["endEdge"])
            ],
          ),
        ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/deadlock.jpg"
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ), ),
            ),
            SizedBox(height: 20),
            Text(
              "Deadlock",
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              "Detection",
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.fromLTRB(105, 12, 105, 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(
                    controller: no_p,
                    style: Theme.of(context).textTheme.bodyText2,
                    decoration:  InputDecoration(
                      hintText: "Number of Processes",
                      hintStyle: Theme.of(context).textTheme.bodyText2),),
                SizedBox(height:20),
                ],
              ),),
              Container(
                child: Card(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                      color: Colors.white,
                      width: 1 )),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 12,80, 12),
                  child: Column(
                    children: [
                      TextField(
                        controller: startedge,
                        style: Theme.of(context).textTheme.bodyText2,
                        decoration: InputDecoration(
                          hintText: "Start Edge",
                          hintStyle: Theme.of(context).textTheme.bodyText2,
                        )),
                        TextField(
                          controller: endedge,
                        style: Theme.of(context).textTheme.bodyText2,
                        decoration: InputDecoration(
                          hintText: "End Edge",
                          hintStyle: Theme.of(context).textTheme.bodyText2,
                        ))
                    ],),),
                ),),
                SizedBox(height: 20),
                Card(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                     side: BorderSide(
                       color: Colors.white,
                       width: 2),),
                       child: IconButton(
                         onPressed: addfunc,
                         icon: Icon(
                           Icons.exposure_plus_1,
                            color: Colors.white ),
                          iconSize: 50,),
                       ),
                       SizedBox(height:20),
              ex ? Text("Fill the empty fields") : Text(""),  //if ? and else :
                list.isEmpty ? Text("") : Expanded(
                child: ListView(
                  children: list.map((item) => cardContainer(item)).toList(),
                  ) ,),
                  SizedBox(height: 20),
                  Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(right: 8),
                      height: 50,
                        width: 160,
                        child: Card(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15
                            ),
                            side: BorderSide(
                              color: Colors.white.withOpacity(0.5),
                              width: 1
                            )
                          ),
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Start Simulation",
                            style: Theme.of(context).textTheme.bodyText2
                            ),
                          ],
                        ),
                          ),
                          )),
                  ),
                ],
        ),),
      ),
    );
  }
}
class bankers extends StatefulWidget {
  @override
  _bankersState createState() => _bankersState();
}

class _bankersState extends State<bankers> {
  final tw= TextEditingController();
  final aw= TextEditingController();
  final pname= TextEditingController();
  final need= TextEditingController();
  List list= [];
  bool ex= false;

  Text addfunc(){
    if(
      tw.text != "" && aw.text != "" && pname.text != "" && need.text != ""
    ){
      setState(() {
        ex = false;
        list.add(
          {
          "Totalworkvector": tw.text,
          "Availableworkvector" : aw.text,
          "Processname" : pname.text,
          "Needvector" : need.text
          }
          );
          print(list);
      });
    } else{
          ex= true;
      }
  }

  
Widget cardContainer(item){
  return Card(
    color: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
      side: BorderSide(
        width: 1,
        color: Colors.white)),
        child: Padding(
          padding: EdgeInsets.fromLTRB(45, 12, 45, 12),
          child: Column(
            children: [
              Text(item["Totalworkvector"]),
              Text(item["Availableworkvector"]),
              Text(item["Processname"]),
              Text(item["Needvector"])
            ],
          ),
        ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/bankers.jpg"
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ), ),
            ),
            SizedBox(height: 20),
            Text(
              "Bankers",
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              "Algorithm",
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.fromLTRB(105, 12, 105, 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(
                    
                    style: Theme.of(context).textTheme.bodyText2,
                    decoration:  InputDecoration(
                      hintText: "Total work vector",
                      hintStyle: Theme.of(context).textTheme.bodyText2),),
                      TextField(
                    
                    style: Theme.of(context).textTheme.bodyText2,
                    decoration:  InputDecoration(
                      hintText: "Available work vector",
                      hintStyle: Theme.of(context).textTheme.bodyText2),)
                
                ],
              ),),
              SizedBox(height:20),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Container(
                  child: Card(
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(
                        color: Colors.white,
                        width: 1 )),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(40, 12,80, 12),
                    child: Column(
                      children: [
                        TextField(
                          
                          style: Theme.of(context).textTheme.bodyText2,
                          decoration: InputDecoration(
                            hintText: "Process name",
                            hintStyle: Theme.of(context).textTheme.bodyText2,
                          )),
                          TextField(
                          style: Theme.of(context).textTheme.bodyText2,
                          decoration: InputDecoration(
                            hintText: "Need vector",
                            hintStyle: Theme.of(context).textTheme.bodyText2,
                          ))
                      ],),),
                  ),),
              ),
                SizedBox(height: 20),
                Card(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                     side: BorderSide(
                       color: Colors.white,
                       width: 2),),
                       child: IconButton(
                         onPressed: addfunc,
                         icon: Icon(
                           Icons.exposure_plus_1,
                            color: Colors.white ),
                          iconSize: 50,),
                       ),
                       SizedBox(height:20),
                       ex ? Text("Fill the empty fields") : Text(""),
              list.isEmpty ? Text("") : Expanded(
                child: ListView(
                  children: list.map((item) => cardContainer(item)).toList(),
                  ) ,),
                  SizedBox(height: 20),
                  Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(right: 8),
                      height: 50,
                        width: 160,
                        child: Card(
                            color: Colors.blue[800],
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15
                            ),
                            side: BorderSide(
                              color: Colors.white.withOpacity(0.5),
                              width: 1
                            )
                          ),
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Start Simulation",
                            style: Theme.of(context).textTheme.bodyText2
                            ),
                          ],
                        ),
                          ),
                          )),
                  ),
                      ],
        ),),
    ));
  }
}
class fittingALgo extends StatefulWidget {
  @override
  _fittingALgoState createState() => _fittingALgoState();
}

class _fittingALgoState extends State<fittingALgo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}