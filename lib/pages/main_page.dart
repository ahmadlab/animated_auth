import 'dart:ui';

import 'package:animated_auth_preparation/pages/forgot_password_page.dart';
import 'package:animated_auth_preparation/pages/login_page.dart';
import 'package:animated_auth_preparation/pages/registration_page.dart';
import 'package:flutter/material.dart';
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>  with SingleTickerProviderStateMixin {

  final _pageController = PageController(initialPage: 0);

  List<Widget> pages = [];


  moveTo(int pageNumber){
      _pageController.animateToPage(pageNumber, duration: Duration(milliseconds: 500), curve: Curves.ease);
  }


  @override
  void initState() {
    
    super.initState();
    pages = [
    LoginPage(func: moveTo,),
    RegistrationPage(func: moveTo,),
    ForgotPasswordPage(func: moveTo)
  ];
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/loading.gif"), fit: BoxFit.cover)
              ),
            ),
            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 50,
                  sigmaY: 50
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    
                    physics: NeverScrollableScrollPhysics(),
                    controller: _pageController,
                    scrollDirection: Axis.horizontal,
                    itemCount: pages.length,
                    itemBuilder: (_, index){
                      return pages[index];
                    },
                  ),
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}