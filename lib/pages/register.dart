import 'package:flutter/material.dart';
import 'package:hook_up_rent/routes.dart';

class RegisterPage extends StatelessWidget {
  // const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('注册')],
          ),
          // leading: IconButton(
          //   icon: Icon(
          //     Icons.arrow_back_ios,
          //     color: Colors.white,
          //     size: 30.0,
          //   ),
          // ),
        ),
        body: RegisterForm());
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
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
                  decoration: InputDecoration(
                    hintText: '密码',
                  ),
                  validator: (String value) {
                    if (value == null || value.isEmpty) {
                      return '请输入你的密码';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: EdgeInsets.all(24.0),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: '确认密码',
                  ),
                  validator: (String value) {
                    if (value == null || value.isEmpty) {
                      return '请确认你的密码';
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
                      child: Text('注册'),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('已有账号，'),
                    TextButton(
                        onPressed: () => {
                              Navigator.pushNamed(
                                context,
                                Routes.login,
                              )
                            },
                        child: Text(
                          '去登录~',
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
