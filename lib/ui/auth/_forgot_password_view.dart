part of auth_view;

class _ForgotPasswordView extends StatelessWidget {
  const _ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return GrockBlurEffect(
      border: const Border(),
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(0.4),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: false,
          automaticallyImplyLeading: false,
          title: const CustomBackButton(
            title: "Giriş Yap",
          ),
        ),
        body: Padding(
          padding: 20.paddingHorizontal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GrockFadeAnimation(
                alignment: Alignment.bottomCenter,
                delay: 400.milliseconds,
                value: 300,
                child: Text(
                  "Şifrenizi mi unuttunuz?",
                  style: context.headlineMedium.copyWith(color: Colors.white),
                ),
              ),
              8.height,
               GrockFadeAnimation(
                alignment: Alignment.bottomCenter,
                delay: 400.milliseconds,
                value: 330,
                child: Text(
                  "Şifrenizi sıfırlamak için e-posta adresinizi giriniz. Size bir sıfırlama maili göndereceğiz.",
                  style: context.bodyMedium.copyWith(color: Colors.white),
                ).paddingOnlyLeft(4),
              ),
              32.height,
              GrockFadeAnimation(
                alignment: Alignment.bottomCenter,
                delay: 450.milliseconds,
                value: 360,
                child: const CustomTextField(
                    hintText: "E-posta adresinizi giriniz",
                    keyboardType: TextInputType.emailAddress),
              ),
              32.height,
              GrockFadeAnimation(
                alignment: Alignment.bottomCenter,
                delay: 500.milliseconds,
                value: 390,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Sıfırlama Maili Gönder"),
                ),
              ),
              12.height,
              context.bottom.height,
            ],
          ),
        ),
      ),
    );
  }
}
