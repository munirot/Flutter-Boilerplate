import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import 'login_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (controller) => Scaffold(
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.transparent,
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: controller.onUsernameChanged,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "username",
                  ),
                ),
                TextField(
                  onChanged: controller.onPasswordChanged,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "password",
                  ),
                ),
                FlatButton(
                  onPressed: controller.submit,
                  color: Colors.black,
                  child: Text(
                    "Send",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
