part of auth_view;

class _RegisterView extends ConsumerWidget {
  const _RegisterView({super.key});

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
                hintText: "Adınızı giriniz", keyboardType: TextInputType.name),
          ),
          12.height,
          GrockFadeAnimation(
            alignment: Alignment.bottomCenter,
            delay: 450.milliseconds,
            value: 300,
            child: const CustomTextField(
                hintText: "E-posta adresinizi giriniz",
                keyboardType: TextInputType.emailAddress),
          ),
          12.height,
          GrockFadeAnimation(
            alignment: Alignment.bottomCenter,
            delay: 500.milliseconds,
            value: 300,
            child: const CustomTextField(
                hintText: "Şifrenizi giriniz",
                isPassword: true,
                keyboardType: TextInputType.visiblePassword),
          ),
          32.height,
          GrockFadeAnimation(
            alignment: Alignment.bottomCenter,
            delay: 550.milliseconds,
            value: 300,
            child: ElevatedButton(
              onPressed: () => Grock.toRemove(const ProfileCompleteView()),
              child: const Text("Kayıt Ol"),
            ),
          ),
          24.height,
          context.bottom.height,
        ],
      ),
    );
  }
}
