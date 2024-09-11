// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unnecessary_import, must_be_immutable, unused_import, prefer_const_constructors_in_immutables, unused_field

import 'dart:ui';

import 'package:edu_vista/pages/confirm_password_page.dart';
import 'package:edu_vista/pages/login_page.dart';
import 'package:edu_vista/pages/Forgot_password_page.dart';
import 'package:edu_vista/widgets/my_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupPage extends StatefulWidget {
   static const String id = 'SignUpPAge';
  SignupPage({
    super.key,
  });

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _emailController = TextEditingController();
  final _confirmpasswordController = TextEditingController();
  final _passwordController = TextEditingController();
  final _fullnameController = TextEditingController();
  // final FirebaseAuth _auth = FirebaseAuth.instance;

  // void _login() async {
  //   try {
  //     await _auth.signInWithEmailAndPassword(
  //       email: _emailController.text,
  //       password: _passwordController.text,
  //     );
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => LoginPage()),
  //     );
  //   } catch (e) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text('Failed to sign in: ${e.toString()}')),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(children: [
        Align(
            alignment: AlignmentDirectional(0, -1),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Align(
                      alignment: AlignmentDirectional(-1, -1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
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
                    alignment: AlignmentDirectional(1, -1),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 5, 0),
                      child: FaIcon(
                        FontAwesomeIcons.signal,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(1, -1),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 5, 0),
                      child: Icon(
                        Icons.wifi_sharp,
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                  ),
                  Align(
                      alignment: AlignmentDirectional(1, -1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 10, 0),
                        child: FaIcon(
                          FontAwesomeIcons.batteryFull,
                          color: Color(0xFFEFC539),
                          size: 24,
                        ),
                      ))
                ],
              ),
            )),
        Align(
          alignment: AlignmentDirectional(0, -0.88),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 90, 8, 0),
                      child: Text('Sign Up',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Readex Pro',
                            fontSize: 25,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w600,
                          )),
                    )),
                //--------------------------------------------------------------------------------------
                Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 30, 8, 0),
                        child: Container(
                            width: 330,
                            child: Column(children: [
                              TextFieldsWidget(
                                  // controller: _fullnameController,
                                  keyboardType: TextInputType.name,
                                  labelText: 'Full Name ...'),
                              //----------------------------------------------------------------------------------------
                              Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8, 30, 8, 0),
                                    child: Container(
                                        child: TextFieldsWidget(
                                      // controller: _emailController,
                                      keyboardType: TextInputType.emailAddress,
                                      labelText: 'Email ...',
                                    )),
                                  )),
                              //---------------------------------------------------------------------------------------
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 30, 8, 0),
                                  child: Container(
                                    width: 330,
                                    child: TextFieldsWidget(
                                        // controller: _passwordController,
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        labelText: 'Password'),
                                  ),
                                ),
                              ),
                              //-------------------------------------------------------------------------------------
                              Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 30, 8, 0),
                                      child: Container(
                                          width: 330,
                                          child: TextFieldsWidget(
                                            keyboardType:
                                                TextInputType.visiblePassword,
                                            labelText: 'Confirm Password',
                                          )))),
                              //----------------------------forgot password textbutton----------------------------------------------------------

                              Align(
                                  alignment: AlignmentDirectional(1, 0),
                                  child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 15, 30, 0),
                                      child: InkWell(
                                        onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const ForgotPasswordPage()),
                                        ),
                                        child: Text('Forgot password?',
                                            textAlign: TextAlign.end,
                                            style: TextStyle(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFFEFC539),
                                              letterSpacing: 0,
                                            )),
                                      )))
                            ])))),
                //-----------------------------------sign up button------------------------------------------------
                Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 16),
                        child: Container(
                          width: 327,
                          height: 52,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.all(Color(0xFFEFC539)),
                              ),
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(color: Colors.white),
                              )),
                        ))),

                //---------------------------------or sign up with text---------------------------------------------------------------------------
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 20, 16, 20),
                    child: Text('Or sign up with',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0,
                        )),
                  ),
                ),
//---------------------------------------facebook button----------------------------------------------------------------
                Align(
                  alignment: AlignmentDirectional(70, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(35, 0, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Container(
                            width: 230,
                            height: 44,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.all(Color(0xFF2D62FF)),
                              ),
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.facebook,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Sign in with Facebook',
                                    style: TextStyle(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
//-----------------------------------google login---------------------------------------------------
                        Align(
                            alignment: AlignmentDirectional(6, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              child: Container(
                                width: 83,
                                height: 44,
                                // // child:
                                // Image.asset('assets/images/buttons.PNG'),
                                child: ElevatedButton(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  child: FaIcon(
                                    FontAwesomeIcons.google,
                                    size: 25,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                //------------------------ already have an account?------------------------------------------
                Padding(
                  padding: EdgeInsetsDirectional.only(top: 5, start: 60),
                  child: Row(
                    children: [
                      Text('You already have an account?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0,
                          )),
                      Align(
                        alignment: AlignmentDirectional(1, 0),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 15, 30, 15),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async => await Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()),
                            ),
                            child: Text('Login Here',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0xFFEFC539),
                                  letterSpacing: 0,
                                )),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ]),
        )
      ]),
    ));
  }
}
