import 'package:flutter/material.dart';

import '../../../common_lib.dart';
import '../../../components/custom_auth_text_feild.dart';

class LoginOrRigisterPage extends StatefulWidget {
  const LoginOrRigisterPage({super.key});

  @override
  State<LoginOrRigisterPage> createState() => _LoginOrRigisterPageState();
}

class _LoginOrRigisterPageState extends State<LoginOrRigisterPage> {
  final _formKey = GlobalKey<FormState>();
  var phoneNumber = TextEditingController();

  void signIn() {
    if (_formKey.currentState!.validate()) {
      //otpController.sendOtp();
      context.pushNamed(Routes.otpPage, extra: {
        'phoneNumber': phoneNumber.text,
        'isLogin': true,
      });
    }
  }

  @override
  void initState() {
    phoneNumber = TextEditingController(text: '07709509877');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: Insets.medium,
          vertical: Insets.large,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(Assets.assetsIconsLoginOrRigisterPic),
              Text(
                'تسجيل الدخول',
                style: TextStyle(
                  fontSize: CustomFontsTheme.veryBigSize,
                  fontWeight: CustomFontsTheme.bigWeight,
                ),
              ),
              Gap(Insets.medium),
              CustomAuthTextFormField(
                validator: context.validator.phone().build(),
                controller: phoneNumber,
                labelText: 'رقم الهاتف',
                prefixIcon: Assets.assetsIconsCustomPhone,
              ),
              Gap(Insets.medium),
              Gap(Insets.exLarge),
              ElevatedButton(onPressed: signIn, child: Text('تسجيل الدخول')),
              Gap(Insets.small),
              OutlinedButton(
                onPressed: () => context.pushNamed(Routes.registerPage),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Theme.of(context).colorScheme.onSurface,
                ),
                child: Text('انشاء حساب جديد'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
