import 'package:flutter/material.dart';
import 'Info_Profile.dart';

class AvatarInfo extends StatelessWidget {
  const AvatarInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(alignment: Alignment.center, children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.red, Colors.yellow])),
            ),
            Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[300]))
          ]),
          InfoProfile("Posts", "123"),
          InfoProfile("Following", "123K"),
          InfoProfile("Followers", "123M")
        ],
      ),
    );
  }
}
