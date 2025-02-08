import 'package:app/components/custom_auth_text_feild.dart';
import 'package:flutter/material.dart';
import '../../../common_lib.dart';
import '../../../components/custom_back_botton.dart';
import '../../../components/custom_elevated_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController otpController = TextEditingController();
  var phoneNumber = TextEditingController();

  void next() {
    if (_formKey.currentState!.validate()) {
      //  otpController.sendOtp();
      context.pushNamed(Routes.otpPage, extra: {
        'isLogin': false,
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
      appBar: AppBar(
        leadingWidth: 100,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: CustomBackButton(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: Insets.medium,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(Assets.assetsIconsCreateAccountPic),
              Text(
                'أنشاء حساب جديد',
                style: TextStyle(
                    fontSize: CustomFontsTheme.veryBigSize,
                    fontWeight: CustomFontsTheme.bigWeight),
              ),
              Gap(Insets.medium),
              CustomAuthTextFormField(
                validator: context.validator.phone().build(),
                controller: phoneNumber,
                labelText: 'رقم الهاتف',
                prefixIcon: Assets.assetsIconsPhone,
              ),
              Gap(Insets.exLarge),
              ElevatedButton(
                  onPressed: next,
                  child: ElevatedButtonChild(
                    text: 'التالي',
                    icon: Icons.chevron_right,
                  )),
              Gap(Insets.small),
            ],
          ),
        ),
      ),
    );
  }
}
