import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:url/responsive/textstlye.dart';
import 'package:url/view/signup.dart';
import 'package:url/widget/form.dart';

class Singin_Screen extends StatelessWidget {
  const Singin_Screen({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    final width = MediaQuery.of(context).size.width;
    final higth = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        leading: IconButton(
            onPressed: () async {
              Navigator.pop(context);
            },
            icon: SimpleShadow(
              child: Icon(Icons.arrow_back, color: Colors.black),
              opacity: 0.6, // Default: 0.5
              color: Colors.white, // Default: Black
              offset: Offset(5, 5), // Default: Offset(2, 2)
              sigma: 7, // Default: 2
            )),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                if (ResponsiveBreakpoints.of(context).isMobile ||
                    ResponsiveBreakpoints.of(context).isTablet)
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    width: width * 0.8,
                    height: higth * 0.7,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4,
                              color: Colors.grey.withOpacity(0.5),
                              offset: Offset(0, 4))
                        ]),
                    child: Center(
                      child: Form(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Text_inout(
                                hidtext: 'Phone number or email',
                                text: email,
                              ),
                              Container(
                                width: width,
                                height: 1,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text_inout(hidtext: 'Password', text: password),
                              Container(
                                width: width,
                                height: 1,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text('Forget Password'))),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () async {
                                    /// buttonlogin
                                  },
                                  child: Container(
                                    width: width * 0.6,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.blue[400],
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Center(
                                      child: Text(
                                        'Login',
                                        style: gettextstylewhite(context),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () async => Get.to(SignUpScreen()),
                                  child: Container(
                                    width: width * 0.6,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.blue[400],
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Center(
                                      child: Text(
                                        'Sign Up',
                                        style: gettextstylewhite(context),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.network(
                                      'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png',
                                      width: 70,
                                      height: 70,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.network(
                                      'https://brandlogos.net/wp-content/uploads/2016/09/facebook-icon-preview.png',
                                      width: 70,
                                      height: 70,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                else
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    width: width * 0.5,
                    height: higth * 0.7,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4,
                              color: Colors.grey.withOpacity(0.5),
                              offset: Offset(0, 4))
                        ]),
                    child: Form(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Text_inout(
                                hidtext: 'Phone number or email', text: email),
                            Container(
                              width: width,
                              height: 1,
                              color: Colors.grey,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text_inout(hidtext: 'Password', text: password),
                            Container(
                              width: width,
                              height: 1,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                    onPressed: () {},
                                    child: Text('Forget Password'))),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () async {},
                                child: Container(
                                  width: width * 0.6,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.blue[400],
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                    child: Text(
                                      'Login',
                                      style: gettextstylewhite(context),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () async => Get.to(SignUpScreen()),
                                child: Container(
                                  width: width * 0.6,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.blue[400],
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                    child: Text(
                                      'Sign Up',
                                      style: gettextstylewhite(context),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.network(
                                    'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png',
                                    width: 70,
                                    height: 70,
                                    fit: BoxFit.cover,
                                  ),
                                  Image.network(
                                    'https://brandlogos.net/wp-content/uploads/2016/09/facebook-icon-preview.png',
                                    width: 70,
                                    height: 70,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
