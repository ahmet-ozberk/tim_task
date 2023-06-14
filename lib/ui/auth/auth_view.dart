library auth_view;

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';
import 'package:tim_task/app/constant/constants.dart';
import 'package:tim_task/assets.dart';

import '../../app/components/custom_back_button.dart';
import '../../app/components/custom_text_field.dart';
import '../profile_complete/profile_complete_view.dart';

part '_login_view.dart';
part '_register_view.dart';
part '_forgot_password_view.dart';

class AuthView extends ConsumerStatefulWidget {
  const AuthView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AuthViewState();
}

class _AuthViewState extends ConsumerState<AuthView>
    with SingleTickerProviderStateMixin {
  late final TabController tabController =
      TabController(length: AuthViewSelection.values.length, vsync: this);
  double _currentOffset = 0.0;
  List backgroundImages = [
    Assets.image.loginBackgroundJPG,
    Assets.image.registerBackgroundJPG
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            AnimatedOpacity(
              duration: 100.milliseconds,
              opacity: Grock.normalizeValue(_currentOffset, 0.0, context.width),
              child: _backgroundImage(context, context.isDarkTheme, index: 1),
            ),
            AnimatedOpacity(
              duration: 100.milliseconds,
              opacity: Grock.normalizeValue(_currentOffset, context.width, 0.0),
              child: _backgroundImage(context, context.isDarkTheme, index: 0),
            ),
            Column(
              children: [
                GrockFadeAnimation(
                  duration: 400.milliseconds,
                  child: SafeArea(
                    bottom: false,
                    child: Container(
                      margin: const EdgeInsets.all(24.0),
                      decoration: BoxDecoration(
                        color: context.isDarkTheme
                            ? ThemeData.dark(useMaterial3: true).scaffoldBackgroundColor
                            : Colors.grey.shade200,
                        borderRadius: kSegmentRadius.borderRadius,
                      ),
                      child: TabBar(
                        splashBorderRadius: kSegmentRadius.borderRadius,
                        controller: tabController,
                        dividerColor: Colors.transparent,
                        tabs: AuthViewSelection.values
                            .map((e) => Tab(text: e.label))
                            .toList(),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: NotificationListener(
                    onNotification: (notification) {
                      if (notification is ScrollUpdateNotification) {
                        setState(() {
                          _currentOffset = notification.metrics.pixels;
                        });
                      }
                      return true;
                    },
                    child: TabBarView(
                      controller: tabController,
                      children: const [_LoginView(), _RegisterView()],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  ImageFiltered _backgroundImage(BuildContext context, bool isDarkTheme,
      {required int index}) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(
        sigmaX: kAuthBackgroundBlur,
        sigmaY: kAuthBackgroundBlur,
      ),
      child: Image.asset(
        backgroundImages[index],
        key: ValueKey<String>(backgroundImages[index]),
        fit: BoxFit.cover,
        colorBlendMode: BlendMode.srcATop,
        color: Colors.black.withOpacity(isDarkTheme ? 0.7 : 0.24),
        height: context.height,
        width: context.width,
        opacity: const AlwaysStoppedAnimation<double>(0.8),
      ),
    );
  }
}

enum AuthViewSelection {
  login("Giriş Yap"),
  register("Kayıt Ol");

  final String label;

  const AuthViewSelection(this.label);
}
