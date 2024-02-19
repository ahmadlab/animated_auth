import 'package:animate_do/animate_do.dart';
import 'package:animated_auth_preparation/components/input_components.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  final Function(int) func;

  ForgotPasswordPage({super.key, required this.func});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        //padding: EdgeInsets.only(top: MediaQuery.of(context).size.height /3),
        width: MediaQuery.of(context).size.width,
        child: ListView(
          reverse: true,
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(30)),
                child: ListView(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    Container(
                        child: Text(
                      "Forgot Your Password",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(child: TopInput()),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap: () {
                                widget.func(1);
                              },
                              child: Text(
                                "Registration",
                                style: TextStyle(color: Colors.green),
                              )),
                          GestureDetector(
                              onTap: () {
                                widget.func(0);
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(color: Colors.green),
                              ))
                        ],
                      ),
                    ),
                  ],
                ))
          ],
        ));
  }
}
