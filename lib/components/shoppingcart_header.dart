
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart2/constants.dart';

class ShoppingcartHeader extends StatefulWidget {
  const ShoppingcartHeader({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ShoppingcartHeaderState();
  }
}

class ShoppingcartHeaderState extends State<ShoppingcartHeader> {

  int selectedId = 0; // 이걸 통해서 각각의 이미지를 표현할 거임
  List<String> imageView = [
    "p1.jpeg",
    "p2.jpeg",
    "p3.jpeg",
    "p4.jpeg",
  ];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildHeaderImage(),
        _buildHeaderButtons(),
      ],
    );
  }

  Widget _buildHeaderImage() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: AspectRatio(
        aspectRatio: 5/3,
        child: Image.asset(
          imageView[selectedId],
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildHeaderButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildHeaderButton(0, Icons.directions_bike),
        _buildHeaderButton(1, Icons.bike_scooter),
        _buildHeaderButton(2, CupertinoIcons.car_detailed),
        _buildHeaderButton(3, CupertinoIcons.airplane),
      ],
    );
  }

  Container _buildHeaderButton(int id, IconData mIcon) {
    return Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: selectedId == id ? kAccentColor : kPrimaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: IconButton(
          onPressed: () {
            setState(() {
              selectedId = id;
            });
          },
          icon: Icon(mIcon),
        ),
      );
  }
}