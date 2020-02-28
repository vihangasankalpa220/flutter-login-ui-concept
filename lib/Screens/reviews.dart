import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:loginui/widgets/smooth_star_rating.dart';
import 'package:loginui/util/comments.dart';
import 'package:loginui/util/const.dart';


class reviews extends StatelessWidget {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white24,
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_backspace,
            color: Colors.black,
          ),
          onPressed: ()=>Navigator.pop(context),
        ),
        centerTitle: true,

        title: Text(
          "Reviews",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
          maxLines: 2,
        ),
        elevation: 0.0,
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0,0,10.0,0),
        child: ListView(
          children: <Widget>[


            Text(
              "Reviews",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
              maxLines: 1,
            ),
            SizedBox(width: 1.0,height:10.0 ),
            Padding(
              padding: EdgeInsets.only(bottom: 1.0, top: 2.0),
              child: Row(
                children: <Widget>[
                  SmoothStarRating(
                    starCount: 4,
                    color: Constants.ratingBG,
                    allowHalfRating: true,
                    rating: 8.0,
                    size: 24.0,
                  ),
                  SmoothStarRating(
                    starCount: 1,
                    color: Constants.ratingBG,
                    allowHalfRating: true,
                    rating: 0.0,
                    size: 24.0,
                  ),

                  SizedBox(width: 1.0,height:1.0 ),

                  Text(
                    "8 Reviews",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),

                ],
              ),
            ),


            SizedBox(height: 4.0),


            Row(children: <Widget>[
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 0, right: 0),
                    child: Divider(
                      color: Colors.black,
                      height: 20,
                    )),
              ),
            ]),


            ListView.builder(
              shrinkWrap: true,
              primary: false,
              physics: NeverScrollableScrollPhysics(),
              itemCount: comments == null?0:comments.length,
              itemBuilder: (BuildContext context, int index) {
               Map comment = comments[index];
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage(
                      'Assets/image2.png',
                    ),
                  ),
                  subtitle: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SmoothStarRating(
                    starCount: 4,
                            color: Constants.ratingBG,
                            allowHalfRating: true,
                            rating: 8.0,
                            size: 15.0,
                          ),
                          SmoothStarRating(
                            starCount: 1,
                            color: Constants.ratingBG,
                            allowHalfRating: true,
                            rating: 0.0,
                            size: 15.0,
                          ),
                          SizedBox(width: 6.0),
                          Text(
                            "February 14, 2020",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 10),
                      Text(
                      "Nulla quis lorem ut libero malesuada feugiat. Lorem ipsum dolor "
                "sit amet, consectetur adipiscing elit. Curabitur aliquet quam "
                "id dui posuere blandit. Pellentesque in ipsum id orci porta "
                ""
                " rutrum congue leo eget malesuada. Vivamus magna justo,"
                " lacinia eget consectetur sed, convallis at tellus."
                " Vivamus suscipit tortor eget felis porttitor volutpat."
               ,
                style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w300,
                ),
                ),
                      Divider(
                        color: Colors.grey,
                        height: 40,
                      ),

                    ],
                  ),
                );
              },
            ),

          ],
        ),
      ),

    );
  }
}
