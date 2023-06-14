part of auth_view;

class _LoginView extends ConsumerWidget {
  const _LoginView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: 20.paddingOnlyLeftRight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GrockFadeAnimation(
            alignment: Alignment.bottomCenter,
            delay: 400.milliseconds,
            value: 300,
            child: const CustomTextField(
                hintText: "E-posta adresinizi giriniz",
                keyboardType: TextInputType.emailAddress),
          ),
          12.height,
          GrockFadeAnimation(
            alignment: Alignment.bottomCenter,
            delay: 450.milliseconds,
            value: 300,
            child: const CustomTextField(
                hintText: "Şifrenizi giriniz",
                isPassword: true,
                keyboardType: TextInputType.visiblePassword),
          ),
          32.height,
          GrockFadeAnimation(
            alignment: Alignment.bottomCenter,
            delay: 500.milliseconds,
            value: 300,
            child: ElevatedButton(
              onPressed: () => Grock.toRemove(const ProfileCompleteView()),
              child: const Text("Giriş Yap"),
            ),
          ),
          4.height,
          GrockFadeAnimation(
              alignment: Alignment.bottomCenter,
              delay: 550.milliseconds,
              value: 300,
              child: TextButton(
                  onPressed: () => Grock.fullScreenModal(
                        builder: (p0, p1, p2) => const _ForgotPasswordView(),
                      ),
                  child: const Text("Şifremi Unuttum"))),
          12.height,
          context.bottom.height,
        ],
      ),
    );
  }
}
