import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruitset/register.dart';
import 'bottombanigation.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        showDialog(context: context, builder: (context) => AlertDialog(
          title: Text("Fruits Set"),
          content: Text("Do You want to quit the app?"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          actions: [
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("No")),
            ElevatedButton(onPressed: (){
              SystemNavigator.pop();
            }, child: Text("Yes")),
          ],
        ) );
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Image(
                image: AssetImage("resources/images/logo.png"),
              ),
            ),
            const Text("Welcome to Fruits Set",style: TextStyle(
              color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,
            )),
            const Text("Login",style: TextStyle(
                color: Colors.black38,fontSize: 25,fontWeight: FontWeight.bold),),

            Container(
              padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
              child: TextFormField(
                decoration: InputDecoration(
                    label: Text("User Name / Email"),
                    hintText: "Email/user Name",
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
                    )
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
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 60, 0)),
                Text(
                  'Forgot Password?',
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            SizedBox(
              height: 40,
            ),
            Container(
              child :Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [
                      // ElevatedButton(onPressed: (){}, child: Text("Sign Up")),
                      // ElevatedButton(onPressed: (){}, child: Text("Sign In")),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)
                            ),
                            padding: EdgeInsets.all(18)
                        ),
                        icon: Icon(Icons.arrow_left, size: 22),
                        label: Text("SignUp",style: TextStyle(
                          fontSize: 20
                        )),
                      ),
                      Container(),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                            builder: (context) {
                              return BottomNavigation();
                            },
                          ), (route) => false);
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)
                            ),
                            padding: EdgeInsets.all(18)
                        ),
                        label: Text("Login",style: TextStyle(
                            fontSize: 20
                        )),
                        icon: Icon(Icons.arrow_right, size: 22),
                      )
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
