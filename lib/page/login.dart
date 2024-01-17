// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:apiapp/page/newspage.dart';
import 'package:apiapp/page/welcome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/cuttom_text.dart';
import '../components/drawer.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: DrawerNav(color: Colors.deepOrange.shade300),
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Card(
            elevation: 10,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/login.png',
                            width: 100,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'LOGIN',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Form(
                            child: Column(
                              children: [
                                customTextField(
                                  hintText: "Email",
                                  prefixIcon: const Icon(Icons.email),
                                  obscureText: false,
                                  textInputType: TextInputType.emailAddress,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                customTextField(
                                  hintText: "Password",
                                  prefixIcon: const Icon(Icons.key),
                                  obscureText: false,
                                  textInputType: TextInputType.visiblePassword,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: const Text("ลืมรหัสผ่าน ?"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {},
                            child: Ink(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                height: 40,
                                alignment: Alignment.center,
                                child: InkWell(
                                  onTap: () {
                                    Get.to(() => NewsPage());
                                  },
                                  child: Text(
                                    'Watch News',
                                    style: const TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Back to First Page ",
                                style: TextStyle(fontSize: 16),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(() => WelcomeScreen());
                                },
                                child: const Text(
                                  " Click Here !",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
