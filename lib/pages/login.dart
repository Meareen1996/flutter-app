import 'package:flutter/material.dart';
import 'package:hook_up_rent/routes.dart';

bool showPassword = false;

class LoginPage extends StatelessWidget {
  // const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('登录')],
          ),
          // leading: IconButton(
          //   icon: Icon(
          //     Icons.arrow_back_ios,
          //     color: Colors.white,
          //     size: 30.0,
          //   ),
          // ),
        ),
        body: LoginForm());
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        minimum: EdgeInsets.all(24),
        child: ListView(
          children: [
            Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: '用户名',
                  ),
                  validator: (String value) {
                    if (value == null || value.isEmpty) {
                      return '请输入你的用户名';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: EdgeInsets.all(24.0),
                ),
                TextFormField(
                  obscureText: !showPassword,
                  decoration: InputDecoration(
                    hintText: '密码',
                    suffixIcon: Padding(
                      padding: const EdgeInsetsDirectional.only(end: 12.0),
                      child: IconButton(
                        icon: Icon(showPassword
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                      ),
                    ),
                  ),
                  validator: (String value) {
                    if (value == null || value.isEmpty) {
                      return '请输入你的密码';
                    }
                    return null;
                  },
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 40, 0, 40),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green),
                      ),
                      child: Text('登录'),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('还没有账号，'),
                    TextButton(
                        onPressed: () => {
                              Navigator.pushNamed(
                                context,
                                Routes.register,
                              )
                            },
                        child: Text(
                          '去注册',
                          style: TextStyle(color: Color(0xff40af3f)),
                        )),
                  ],
                )
              ],
            )
          ],
        ));
  }
}
