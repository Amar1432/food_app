import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/constants.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    "assets/icons/backward.svg",
                    height: 11,
                  ),
                ),
                SvgPicture.asset(
                  "assets/icons/menu.svg",
                  height: 11,
                ),
              ],
            ),
            Container(
              height: 320.0,
              width: 280.0,
              margin: EdgeInsets.symmetric(vertical: 30.0),
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kSecondaryColor,
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/image_1_big.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Vegan salad bowl\n",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      TextSpan(
                        text: "With red tomato",
                        style: TextStyle(
                          color: kTextColor.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "\$20",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(color: kPrimaryColor),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
                "Pariatur consectetur ullamco dolore ad magna minim ullamco ipsum voluptate duis minim qui adipisicing. Mollit exercitation cillum minim id est mollit sunt Lorem. Sint nostrud ex est eiusmod labore enim eu aliqua. Non occaecat laborum ea pariatur magna consectetur labore do consectetur sint esse."),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 27.0),
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.19),
                      borderRadius: BorderRadius.circular(27.0),
                    ),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Add to bag",
                          style: Theme.of(context).textTheme.button,
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        SvgPicture.asset(
                          "assets/icons/forward.svg",
                          height: 11.0,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 80.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kPrimaryColor.withOpacity(0.26),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(15.0),
                          height: 60.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kPrimaryColor,
                          ),
                          child: SvgPicture.asset("assets/icons/bag.svg"),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 15,
                          child: Container(
                            alignment: Alignment.center,
                            height: 28.0,
                            width: 28.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kWhiteColor,
                            ),
                            child: Text(
                              "2",
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  .copyWith(
                                      color: kPrimaryColor, fontSize: 16.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
