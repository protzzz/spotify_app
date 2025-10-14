import 'package:flutter/material.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';

class AuthAppbar extends StatelessWidget {
  const AuthAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color:
                context.isDarkMode
                    ? Colors.white
                    // ? Colors.white.withOpacity(0.04)
                    : Colors.white.withOpacity(0.03),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 15,
            color:
                context.isDarkMode
                    ? Color(0xffDDDDDD)
                    : Color(0xff414141),
          ),
        ),
      ),
    );
  }
}
