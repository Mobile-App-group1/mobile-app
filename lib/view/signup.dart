import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:url/responsive/textstlye.dart';
import 'package:url/view/subscription.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
              opacity: 0.6, // Default: 0.5
              color: Colors.white, // Default: Black
              offset: const Offset(0, 4), // Default: Offset(2, 2)
              sigma: 7,
              child: const Icon(Icons.arrow_back,
                  color: Colors.black), // Default: 2
            )),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              if (ResponsiveBreakpoints.of(context).isDesktop ||
                  ResponsiveBreakpoints.of(context).isTablet)
                Container(
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
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: TextField(
                              controller: email,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Phone number or email'),
                            ),
                          ),
                          Container(
                            width: width,
                            height: 1,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: TextField(
                              controller: password,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'User Name'),
                            ),
                          ),
                          Container(
                            width: width,
                            height: 1,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: TextField(
                              controller: email,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Password'),
                            ),
                          ),
                          Container(
                            width: width,
                            height: 1,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: TextField(
                              controller: email,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Confirm Password'),
                            ),
                          ),
                          Container(
                            width: width,
                            height: 1,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: width,
                              height: 50,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
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
                )
              else
                Container(
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
                  child: Form(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: width * 0.3,
                              height: 30,
                              child: TextButton(
                                  onPressed: () async {
                                    Get.to(Subscription_Screen());
                                  },
                                  child: const Text(
                                    'Subscription Detail',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontSize: 15),
                                  )),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: TextField(
                              controller: email,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Phone number or email'),
                            ),
                          ),
                          Container(
                            width: width,
                            height: 1,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: TextField(
                              controller: password,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'User Name'),
                            ),
                          ),
                          Container(
                            width: width,
                            height: 1,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: TextField(
                              controller: email,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Password'),
                            ),
                          ),
                          Container(
                            width: width,
                            height: 1,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: TextField(
                              controller: email,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Confirm Password'),
                            ),
                          ),
                          Container(
                            width: width,
                            height: 1,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: width,
                              height: 50,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
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
    );
  }
}
