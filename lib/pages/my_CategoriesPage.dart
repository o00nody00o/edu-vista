// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  int _currentIndex = 0;

  // final List<Widget> _tabs = [
  //   CategoriesPage(),
  //   MyHomePage(),
  //   Page3(),
  // ];

  // late CategoriesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  // @override
  // void initState() {
  //   super.initState();
  //   _model = createModel(context, () => CategoriesModel());
  // }

  // @override
  // void dispose() {
  //   _model.dispose();

  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            // _tabs[_currentIndex],
            BottomNavigationBar(
                currentIndex: _currentIndex,
                onTap: (int index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'search'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.my_library_books_outlined),
                      label: 'search'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.search), label: 'search'),
                  BottomNavigationBarItem(
                    label: 'search',
                    icon: Icon(Icons.chat),
                  ),
                ]),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: AlignmentDirectional(0, -1),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Align(
                      alignment: AlignmentDirectional(-1, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                        child: Text('9:41',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 1),
                    child: Padding(
                      padding: EdgeInsets.all(3),
                      child: FaIcon(
                        FontAwesomeIcons.signal,
                        color: Colors.black,
                        size: 15,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                      child: Icon(
                        Icons.wifi_sharp,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 25, 0),
                    child: FaIcon(
                      FontAwesomeIcons.batteryFull,
                      color: Color(0xFFEFC539),
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Welcome',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Readex Pro',
                        fontSize: 23,
                        letterSpacing: 0,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Khan',
                      style: TextStyle(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFF488898),
                        fontSize: 23,
                        letterSpacing: 0,
                        fontWeight: FontWeight.bold,
                      )),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(155, 0, 0, 0),
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Categories',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Readex Pro',
                          fontSize: 19,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      width: 195,
                    ),
                    Text('See All',
                        style: TextStyle(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0,
                          fontWeight: FontWeight.w600,
                        )),
                  ]),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(mainAxisSize: MainAxisSize.max, children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Container(
                    width: 93,
                    height: 38,
                    decoration: BoxDecoration(
                      color: Color(0x92ADB2B2),
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Text('Bussiness',
                          style: TextStyle(
                            fontFamily: 'Readex Pro',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0,
                          )),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Container(
                    width: 66,
                    height: 38,
                    decoration: BoxDecoration(
                      color: Color(0x92ADB2B2),
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Text('UI/UX',
                          style: TextStyle(
                            fontFamily: 'Readex Pro',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0,
                          )),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Container(
                    width: 174,
                    height: 38,
                    decoration: BoxDecoration(
                      color: Color(0x92ADB2B2),
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Text('Software Engineering',
                          style: TextStyle(
                            fontFamily: 'Readex Pro',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0,
                          )),
                    ),
                  ),
                ),
              ]),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Students Also Search for',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Readex Pro',
                          fontSize: 19,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      width: 80,
                    ),
                    Text('See All',
                        style: TextStyle(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0,
                          fontWeight: FontWeight.w600,
                        )),
                  ]),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 4, 0, 12),
                            child: Container(
                              width: 161,
                              height: 210,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(4),
                                child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          child: Image.network(
                                            'images/2.png',
                                            width: 300,
                                            height: 100,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.network(
                                          'images/rate.PNG',
                                          width: 300,
                                          height: 25,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4, 0, 0, 4),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('UI/UX Design',
                                                  style: TextStyle(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0xFF0E0E0F),
                                                    fontSize: 12,
                                                    letterSpacing: 0,
                                                    fontWeight: FontWeight.w600,
                                                  )),
                                              Container(
                                                decoration: BoxDecoration(),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.person_outlined,
                                                      color: Colors.black,
                                                      size: 15,
                                                    ),
                                                    Text('Stephen Moris',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              Color(0xFF131415),
                                                          letterSpacing: 0,
                                                        )),
                                                  ],
                                                ),
                                              ),
                                              Text('\$14.50',
                                                  style: TextStyle(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0xFF488898),
                                                    fontSize: 15,
                                                    letterSpacing: 0,
                                                    fontWeight: FontWeight.w500,
                                                  )),
                                            ]
                                            // .divide(SizedBox(height: 4)),
                                            ),
                                      ),
                                    ]),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 4, 0, 12),
                            child: Container(
                              width: 161,
                              height: 210,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(4),
                                child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          child: Image.network(
                                            'images/3.png',
                                            width: 300,
                                            height: 100,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.network(
                                          'images/rate.PNG',
                                          width: 300,
                                          height: 25,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4, 0, 0, 4),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Wireframing',
                                                  style: TextStyle(
                                                    fontFamily: 'Readex Pro',
                                                    fontSize: 12,
                                                    letterSpacing: 0,
                                                    fontWeight: FontWeight.w600,
                                                  )),
                                              Container(
                                                decoration: BoxDecoration(),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.person_outlined,
                                                      color: Colors.black,
                                                      size: 15,
                                                    ),
                                                    Text('Robert',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              Color(0xFF191A1A),
                                                          letterSpacing: 0,
                                                        )),
                                                  ],
                                                ),
                                              ),
                                              Text('\$18.00',
                                                  style: TextStyle(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0xFF488898),
                                                    fontSize: 15,
                                                    letterSpacing: 0,
                                                    fontWeight: FontWeight.w500,
                                                  )),
                                            ]),
                                      ),
                                    ]),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Top Courses in IT',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontFamily: 'Readex Pro',
                                fontSize: 19,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(width: 130),
                          Text('See All',
                              style: TextStyle(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0,
                                fontWeight: FontWeight.w600,
                              )),
                        ]),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 12),
                          child: Container(
                            width: 161,
                            height: 210,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Colors.white,
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(4),
                              child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(4),
                                        child: Image.network(
                                          'images/1.png',
                                          width: 300,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.network(
                                        'images/rate.PNG',
                                        width: 300,
                                        height: 25,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4, 0, 0, 4),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Linux for beginners',
                                                style: TextStyle(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 13,
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.w600,
                                                )),
                                            Container(
                                              decoration: BoxDecoration(),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Icon(
                                                    Icons.person_outlined,
                                                    color: Colors.black,
                                                    size: 15,
                                                  ),
                                                  Text('Location, Address',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'Readex Pro',
                                                      )),
                                                ],
                                              ),
                                            ),
                                            Text('\$18.00',
                                                style: TextStyle(
                                                  fontFamily: 'Readex Pro',
                                                  color: Color(0xFF488898),
                                                  fontSize: 15,
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                          ]),
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 12),
                          child: Container(
                            width: 161,
                            height: 210,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Colors.white,
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(4),
                              child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(4),
                                        child: Image.network(
                                          'images/4.png',
                                          width: 300,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.network(
                                        'images/rate.PNG',
                                        width: 300,
                                        height: 25,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4, 0, 0, 4),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Machine Learning',
                                              style: TextStyle(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 12,
                                                letterSpacing: 0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Icon(
                                                    Icons.person_outlined,
                                                    color: Colors.black,
                                                    size: 15,
                                                  ),
                                                  Text('Location, Address',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            Color(0xFF080909),
                                                        letterSpacing: 0,
                                                      )),
                                                ],
                                              ),
                                            ),
                                            Text('\$24.50',
                                                style: TextStyle(
                                                  fontFamily: 'Readex Pro',
                                                  color: Color(0xFF488898),
                                                  fontSize: 15,
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                          ]),
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
