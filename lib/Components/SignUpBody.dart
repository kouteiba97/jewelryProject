import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jewelry/Screens/main_screen.dart';

class SignUpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("Register Account",
          style: TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            height: 1.5,
            letterSpacing: 1.0,
          ),
        ),
        Text("Complete your details or continue \nWith social media",textAlign: TextAlign.center,),
        SignUpForm(),
      ],
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formkey =GlobalKey<FormState>();
  String email;
  String password;
  String confirm_password;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final List<String> errors = ["Demo Error"];
    return Form(
      key: _formkey,
      child: Column(
          children: <Widget>[
            // EMAIL TEXT FIELD
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              validator: (value){
                if(value.isEmpty){
                  setState(() {
                    errors.add("Please enter your email");
                  });
                }
                return null;
              },
              decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your Email',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical:20 ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: Colors.black),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: Colors.black),
                    gapPadding: 10,
                  )
              ),
            ),
            SizedBox(height: 20.0,),
            //Password TEXT FIELD
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your Email',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical:20 ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: Colors.black),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: Colors.black),
                    gapPadding: 10,
                  )
              ),
            ),
            SizedBox(height: 20.0,),
            MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen(),),);
              },
              child: Container(
                width: 42,
                height: 28,
                child: Text("Continue",style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  height: 1.5,
                  letterSpacing: 1.0,
                ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
            )
          ]
      ),
    );
  }
}
/*
   buildEmailFormField(),
      SizedBox(height: getProportionateScreenHeight(30)),
      buildPasswordFormField(),
      SizedBox(height: getProportionateScreenHeight(30)),
      Row(
        children: [
          Checkbox(
            value: remember,
            activeColor: kPrimaryColor,
            onChanged: (value) {
              setState(() {
                remember = value;
              });
            },
          ),
          Text("Remember me"),
          Spacer(),
          GestureDetector(
            onTap: () => Navigator.pushNamed(
                context, ForgotPasswordScreen.routeName),
            child: Text(
              "Forgot Password",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          )
        ],
      ),
 */
