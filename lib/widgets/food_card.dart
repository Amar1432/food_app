import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String ingredient;
  final String description;
  final String calories;
  final String image;
  final int price;
  final Function press;

  const FoodCard(
      {this.title,
      this.ingredient,
      this.description,
      this.calories,
      this.image,
      this.price,
      this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: 20.0),
        height: 400.0,
        width: 270.0,
        child: Stack(
          children: <Widget>[
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 380.0,
                width: 250.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34.0),
                  color: kPrimaryColor.withOpacity(0.06),
                ),
              ),
            ),
            // Round Background
            Positioned(
              left: 10.0,
              top: 10.0,
              child: Container(
                height: 181.0,
                width: 181.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(0.15),
                ),
              ),
            ),
            // Food Image
            Positioned(
              top: 0.0,
              left: -50.0,
              child: Container(
                height: 184.0,
                width: 276.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
            // Price
            Positioned(
              right: 20.0,
              top: 80.0,
              child: Text(
                "\$$price",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: kPrimaryColor),
              ),
            ),
            Positioned(
              top: 201.0,
              left: 40.0,
              child: Container(
                width: 210.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      ingredient,
                      style: TextStyle(
                        color: kTextColor.withOpacity(0.4),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      description,
                      maxLines: 3,
                      style: TextStyle(
                        color: kTextColor.withOpacity(
                          0.65,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(calories),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
