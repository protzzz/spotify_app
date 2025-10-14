import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_app/core/configs/theme/app_colors.dart';

class ModeButton extends StatelessWidget {
  final VoidCallback? onTap;
  final bool isSelected;
  final String picturePath;
  final String title;
  final double? height;
  const ModeButton({
    super.key,
    required this.title,
    this.height,
    required this.picturePath,
    this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Column(
            children: [
              ClipOval(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    height: height ?? 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Color(0xff30393C).withOpacity(0.5),
                      shape: BoxShape.circle,
                      border:
                          isSelected
                              ? Border.all(
                                color: Colors.white,
                                width: 2,
                              )
                              : null,
                    ),
                    child: SvgPicture.asset(
                      picturePath,
                      fit: BoxFit.none,
                    ),
                  ),
                ),
              ),
              // ElevatedButton(
              //   onPressed: onPressed,
              //   style: ElevatedButton.styleFrom(
              //     minimumSize: Size.fromHeight(height ?? 80),
              //   ),
              //   child: SvgPicture.asset(picturePath),
              // ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Text(
          title,
          style: TextStyle(
            color: AppColors.lightGrey,
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
