import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_manager_app/core/app_utils/extension.dart';
import 'package:task_manager_app/core/app_utils/validation.dart';
import 'package:task_manager_app/core/router/navigation_service.dart';
import 'package:task_manager_app/core/router/router.dart';
import 'package:task_manager_app/core/theme/app_text_theme.dart';
import 'package:task_manager_app/core/theme/dynamic_theme/app_color.dart';
import 'package:task_manager_app/shared/widgets/buttons.dart';
import 'package:task_manager_app/shared/widgets/textFormField.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    userName.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image(
                        image: AssetImage("login".jpg()),
                        height: 300,
                        width: 300,
                      ),
                    ),
                    Text(
                      "login".tr(),
                      style:
                         AppStringTheme.LargeTextTheme(),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    DefultTextFormField(
                      textController: userName,
                      contentPadding: EdgeInsets.all(15.0),
                      labelText: "user_name".tr(),
                      isFilledColor: true,
                      validator: DefultValidation.defultUserNameValidation,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DefultTextFormField(
                      textController: password,
                      contentPadding: EdgeInsets.all(15.0),
                      labelText: "password".tr(),
                      isFilledColor: true,
                      isPassword: true,
                      validator: DefultValidation.passwordValidation,
                    ),
                    SizedBox(height: 30.0,) , 
                  
                    DefaultButton(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 20.0 , vertical: 10.0),
                      text: "login".tr(),
                      style: AppStringTheme.MediumTextThemeLight(),
                      backgroundColor: AppColors.primary,
                      onTap: (){ 
                        if(formKey.currentState!.validate()){
                          NavigationService.pushNamed(AppRouter.splachRoute);
                       } else {

                       }

                      },
                    )
                   
                    
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
