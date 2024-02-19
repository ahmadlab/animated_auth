import 'package:animate_do/animate_do.dart';
import 'package:animated_auth_preparation/components/input_components.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  final Function(int) func;
  const RegistrationPage({super.key, required this.func});

  @override
  State<RegistrationPage> createState() => _RegistrationpageState();
}

class _RegistrationpageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.only(top: MediaQuery.of(context).size.height /3),
      width: MediaQuery.of(context).size.width,
      
      child: ListView(
        reverse: true,
          children: [
            SizedBox(height: 40,),
            Container(
              padding: EdgeInsets.all(20),
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(30)
                  ),
              child: ListView(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              children: [
                Container(
                  child: Text("Create Account", textAlign: TextAlign.center,style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
                  SizedBox(height: 20,),
                Container(
                  child: TopInput()
                ),
                SizedBox(height: 15,),
                Container(
                  child: MiddleInput(),
                ),
                SizedBox(height: 15,),
                Container(
                  child:  BottomInput()
                ),
                SizedBox(height: 30,),
                Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(
                      child: Text("Login", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.white),),
                    ),
                  ),
                
                SizedBox(height: 30,),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){
                            widget.func(2);
                          },
                          child: Text("Forgot Password", style: TextStyle(color: Colors.green),)),
                        GestureDetector(
                          onTap: (){
                            widget.func(0);
                          },
                          child: Text("Login", style: TextStyle(color: Colors.green),))
                      ],
                    ),
                  ),
                
              ],
            ))
          ],
        
      )
    );
  }
}