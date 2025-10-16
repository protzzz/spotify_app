import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_app/common/extensions/navx.dart';
import 'package:spotify_app/common/widgets/basic_app_button.dart';
import 'package:spotify_app/core/configs/assets/app_images.dart';
import 'package:spotify_app/core/configs/assets/app_vectors.dart';
import 'package:spotify_app/presentation/auth/pages/choose_auth_type_page.dart';
import 'package:spotify_app/presentation/choose_mode/cubit/theme_cubit.dart';
import 'package:spotify_app/presentation/choose_mode/widgets/mode_button.dart';

class ChooseModePage extends StatelessWidget {
  static const String routeName = '/choose-mode';
  static const modes = ['Dark Mode', 'Light Mode'];
  static const picturesPath = [AppVectors.moon, AppVectors.sun];
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 40,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.chooseModeBackground),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.15),
                  BlendMode.darken,
                ),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(AppVectors.logo),
                  ),
                ),
                Spacer(),
                Text(
                  'Choose Mode',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
                SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // children: [
                  //   ModeButton(
                  //     title: modes[index],
                  //     picturePath: picturesPath[index],
                  //     isSelected: isSelected,
                  //     onTap: () {
                  //       context.read<ThemeCubit>().updateTheme(
                  //         ThemeMode.dark,
                  //       );
                  //     },
                  //   ),
                  //   ModeButton(
                  //     title: modes[index],
                  //     picturePath: picturesPath[index],
                  //     isSelected: isSelected,
                  //     onTap: () {
                  //       context.read<ThemeCubit>().updateTheme(
                  //         ThemeMode.light,
                  //       );
                  //     },
                  //   ),
                  // ],
                  children: List.generate(modes.length, (index) {
                    final currentMode =
                        [ThemeMode.dark, ThemeMode.light][index];
                    final isSelected =
                        context.watch<ThemeCubit>().state ==
                        currentMode;

                    return ModeButton(
                      title: modes[index],
                      picturePath: picturesPath[index],
                      isSelected: isSelected,
                      onTap: () {
                        context.read<ThemeCubit>().updateTheme(
                          currentMode,
                        );
                        // print(currentMode);
                      },
                    );
                  }),
                ),
                SizedBox(height: 50),
                BasicAppButton(
                  onPressed: () {
                    context.go(ChooseAuthType.routeName);
                  },
                  title: 'Continue',
                  fontSize: 20,
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
