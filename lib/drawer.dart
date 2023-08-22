import 'package:flutter/material.dart';
import 'package:fruitset/about.dart';
import 'package:fruitset/cart.dart';
import 'package:fruitset/login.dart';
import 'package:fruitset/profile.dart';
import 'package:fruitset/purchase.dart';
import 'package:fruitset/register.dart';
import 'package:fruitset/settings.dart';
import 'home.dart';


Widget appDrawer(BuildContext context){
  return  Drawer(
    // backgroundColor: Colors.lightBlueAccent,
    child: ListView(
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Image.asset("resources/images/logo.png",),),
        ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
          },
          title: Text("Profile"),
          leading: Icon(
              Icons.account_circle_outlined
          ),
        ),
        ListTile(
          title: Text("Fruit List"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
          },
          leading: Icon(
              Icons.list_outlined
          ),
        ),
        ListTile(
          title: Text("Cart"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
          },
          leading: Icon(
            Icons.shopping_cart,
          ),
        ),

        ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Purchase()));
          },
          title: Text("Purchase"),
          leading: Icon(
              Icons.credit_card_outlined
          ),
        ),
        ListTile(
          title: Text("Settings"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
          },
          leading: Icon(
              Icons.settings
          ),
        ),
        ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
          },
          title: Text("About"),
          leading: Icon(
            Icons.info_outline,
          ),
        ),
        // Spacer(),
        ListTile(
          title: Text("Logout"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
          },
          leading: Icon(
              Icons.logout_outlined
          ),
        ),
      ],
    ),
  );
}