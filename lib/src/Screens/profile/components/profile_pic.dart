import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 115,
        width: 115,
        child: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/profile.jpg"),
            ),
            Positioned(
              right: -12,
              bottom: 0,
              child: SizedBox(
                height: 46,
                width: 46,
                child: ElevatedButton(                      
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    primary: Color(0xFFF5F6F9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: BorderSide(color: Colors.white),
                    ),
                  ),
                  onPressed: () {},
                  child: SvgPicture.asset("assets/icons/camera.svg"),
                ),
              ),
            ),
          ],
        ));
  }
}