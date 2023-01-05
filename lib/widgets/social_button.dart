import 'package:flutter/material.dart';
import 'package:flutter_responsive_login_ui/pallete.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialButton extends StatelessWidget {
  final String mIconPath;
  final String mLabel;
  final double mHorizontalPadding;

  // 생성자
  const SocialButton({Key? key, required this.mIconPath, required this.mLabel, this.mHorizontalPadding=100,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: (){},
        icon: SvgPicture.asset(
          mIconPath,
          width: 25,
          color: Pallete.whiteColor,
        ), // 아이콘
        label: Text(
          mLabel,
          style: TextStyle(color: Pallete.whiteColor, fontSize: 17),
        ),
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: mHorizontalPadding),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Pallete.borderColor,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
