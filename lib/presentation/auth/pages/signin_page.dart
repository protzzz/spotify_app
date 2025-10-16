import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_app/common/extensions/navx.dart';
import 'package:spotify_app/common/widgets/auth_appbar.dart';
import 'package:spotify_app/common/widgets/basic_app_button.dart';
import 'package:spotify_app/core/configs/assets/app_vectors.dart';
import 'package:spotify_app/core/configs/theme/app_colors.dart';
import 'package:spotify_app/presentation/auth/pages/signup_page.dart';

class SignInPage extends StatefulWidget {
  static const String routeName = '/sign-in';
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppbar(
        title: SvgPicture.asset(AppVectors.logo, height: 40),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              RichText(
                text: TextSpan(
                  text: 'If You need Any Support ',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color:
                        Theme.of(context).brightness ==
                                Brightness.dark
                            ? Colors.white
                            : Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: 'Click Here',
                      style: TextStyle(color: AppColors.primary),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Username Or Email',
                  hintStyle: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(fontWeight: FontWeight.w500),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: IconButton(
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Recovery Password',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              BasicAppButton(
                onPressed: () {},
                title: 'Sign In',
                fontSize: 20,
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color:
                          Theme.of(context).brightness ==
                                  Brightness.dark
                              ? Colors.white.withOpacity(0.3)
                              : Colors.black.withOpacity(0.3),
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Text(
                      'Or',
                      style: TextStyle(
                        fontSize: 14,
                        color:
                            Theme.of(context).brightness ==
                                    Brightness.dark
                                ? Colors.white
                                : Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color:
                          Theme.of(context).brightness ==
                                  Brightness.dark
                              ? Colors.white.withOpacity(0.3)
                              : Colors.black.withOpacity(0.3),
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: SvgPicture.asset(
                        AppVectors.googleIcon,
                        width: 37,
                      ),
                    ),
                  ),
                  SizedBox(width: 60),
                  Center(
                    child: SvgPicture.asset(
                      AppVectors.appleIcon,
                      color:
                          Theme.of(context).brightness ==
                                  Brightness.dark
                              ? Colors.white
                              : Colors.black,
                      width: 37,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not A Member? ',
                    style: TextStyle(
                      color:
                          Theme.of(context).brightness ==
                                  Brightness.dark
                              ? Colors.white
                              : Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.replaceWith(SignUpPage.routeName);
                    },
                    child: Text(
                      'Register Now',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
