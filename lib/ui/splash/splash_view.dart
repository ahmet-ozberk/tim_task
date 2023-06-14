import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';
import 'package:tim_task/assets.dart';
import 'package:tim_task/ui/auth/auth_view.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      400.waitMilli(() {
        Grock.toRemove(const AuthView(),type: NavType.fade);
      });
    });
  }
@override
  void didChangeDependencies() {
    precacheImage(AssetImage(Assets.image.loginBackgroundJPG), context);
    precacheImage(AssetImage(Assets.image.registerBackgroundJPG), context);
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GrockScaleAnimation(
          child: Text(
            "Tim Task",
            style: context.titleLarge.copyWith(fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }
}
