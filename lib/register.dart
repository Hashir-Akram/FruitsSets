import 'package:flutter/material.dart';

import 'bottombanigation.dart';



class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool? check1 = false, check2 = true, check3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            child: Image(
              image: AssetImage("resources/images/logo.png",),
            ),
            height: 300,
          ),

          const Text("Create an Account",style: TextStyle(
            color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,
          )),

          Container(
            padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
            child: TextFormField(
              decoration: InputDecoration(
                  label: Text("User Name "),
                  hintText: "Enter user Name",
                  prefixIcon: Icon(
                    Icons.person,color: Colors.green,size: 24,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  )
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
            child: TextFormField(
              decoration: InputDecoration(
                label: Text("Email"),
                hintText: "Enter Email",
                prefixIcon: Icon(
                  Icons.email_outlined,color: Colors.green,size: 24,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),

              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
            child: TextFormField(
              decoration: InputDecoration(
                label: Text("Password"),
                hintText: "Enter password",
                prefixIcon: Icon(
                  Icons.password,color: Colors.green,size: 24,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),

              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
            child: TextFormField(
              decoration: InputDecoration(
                label: Text("Confirm Password"),
                hintText: "Re-enter password",
                prefixIcon: Icon(
                  Icons.password,color: Colors.green,size: 24,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),

              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CheckboxListTile(
            value: check3,
            controlAffinity: ListTileControlAffinity.leading, //checkbox at left
            onChanged: (bool? value) {
              setState(() {
                check3 = value;
              });
            },
            title: Text("I agree the terms and Conditions"),
          ),
          SizedBox(
            height: 20,
          ),

          Container(
            child :Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                          ),
                          padding: EdgeInsets.all(18)
                      ), onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigation()));

                    },
                      icon: Icon(Icons.arrow_right, size: 22), label: Text("Create Account",style: TextStyle(
                        fontSize: 20
                    )),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
