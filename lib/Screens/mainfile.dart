
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginui/Screens/Login.dart';
import 'package:loginui/Screens/reviews.dart';
class mainfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('Assets/image2.png'),
              fit: BoxFit.cover,
            )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body:
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.transparent,
            ),
            child: Padding(
              padding: EdgeInsets.all(23),
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 20,),
                  Form(
                    child: Column(

                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 80,top:0),
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "Treva Shop",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontFamily: 'SFUIDisplay',
                                          color: Colors.white,
                                          fontSize: 32,
                                        )
                                    ),
                                  ]
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 40,),
                        Column(

                          children: <Widget>[
                            Divider(
                              color: Colors.white,
                              height: 40,
                              indent: 130,
                              endIndent: 130,
                            )


                          ],
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 1),
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "Get Best Product in Treva Shop",
                                        style: TextStyle(
                                          fontFamily: 'SFUIDisplay',
                                          color: Colors.white,
                                          fontSize: 17,
                                        )
                                    ),

                                  ]
                              ),
                            ),
                          ),
                        ),




                  Padding(
                    padding: EdgeInsets.only(top: 90),
                    child: MaterialButton(
                      onPressed:  () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => reviews()),
                  );
                  },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[

                          Text('Sign up',
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'SFUIDisplay'
                            ),)
                        ],
                      ),
                      color: Colors.transparent,
                      elevation: 0,
                      minWidth: 300,
                      height: 50,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: BorderSide(color: Colors.white)
                      ),
                    ),
                  ),

                        Row(children: <Widget>[
                          Expanded(
                            child: new Container(
                                margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                                child: Divider(
                                  color: Colors.white,
                                  height: 50,
                                )),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Center(
                              child: RichText(
                                text: TextSpan(
                                    children: [
                                      TextSpan(
                                          text: "OR SKIP",
                                          style: TextStyle(
                                            fontFamily: 'SFUIDisplay',
                                            color: Colors.white,
                                            fontSize: 14,
                                          )
                                      ),

                                    ]
                                ),
                              ),
                            ),
                          ),

                          Expanded(
                            child: new Container(
                                margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                                child: Divider(
                                  color: Colors.white,
                                  height: 50,
                                )),
                          ),
                        ]),













                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: MaterialButton(
                            onPressed:() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Login()),
                              );
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[

                                Text('Login',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'SFUIDisplay'
                                  ),)
                              ],
                            ),
                            color: Colors.transparent,
                            elevation: 0,
                            minWidth: 300,
                            height: 50,
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                                side: BorderSide(color: Colors.white)
                            ),
                          ),
                        ),



                ],
              ),
            ),
  ],
              ),

        ),
    ),
        ),
      );
  }
}