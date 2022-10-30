import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:untra/dashboard.dart';
import 'package:untra/login.dart';
class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 20,
              //let's create a common header widget
            ),
            SafeArea(
              child: Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 10),// This will be the login form
                  child: Column(
                    children: [
                      Text(
                        'Untra',
                        style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 30.0),
                      Form(
                          child: Column(
                            children: [
                              Container(
                                child: TextField(
                                  decoration: InputDecoration(
                                      //labelText: hint,
                                      hintText: "username",
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black
                                          )
                                      )
                                  ),
                                ),

                              ),
                              SizedBox(height: 30.0),
                              Container(
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                     // labelText: hint,
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black
                                          )
                                      )
                                  ),
                                ),
                              ),
                              SizedBox(height: 30.0),
                Container(
                child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                hintText: "Confirm Password",
               // labelText: hint,
                border: OutlineInputBorder(
                borderSide: BorderSide(
                color: Colors.black
            )
      )
    ),
    ),
    ),
    Padding(padding: EdgeInsets.all(10)),
                              Container(
                                child: ElevatedButton(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                                    child: Text('Sign Up'.toUpperCase(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                                  ),
                                  onPressed: (){
                                    //After successful login we will redirect to profile page. Let's create profile page now
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => dashboard()));
                                  },
                                ),
                              ),
                              Padding(padding: EdgeInsets.all(10)),
                              Container(
                                margin: EdgeInsets.fromLTRB(10,20,10,20),
                                //child: Text('Don\'t have an account? Create'),
                                child: Text.rich(
                                    TextSpan(
                                        children: [
                                          TextSpan(text: "Already have an account? "),
                                          TextSpan(
                                            text: 'Sign in',
                                            recognizer: TapGestureRecognizer ()
                                              ..onTap = (){ Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login()));
                                              },
                                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                                          ),
                                        ]
                                    )
                                ),
                              ),
                            ],
                          )
                      ),
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
);
  }
}
