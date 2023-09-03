import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreen[600],
        body:
        Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Text("مرحبا بك , قم بتجيل الدخول", style: TextStyle(
                  color: Colors.white70, fontWeight: FontWeight.bold,
                ),
                ),
              ),
            ),
            Container(
              width: 300,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade50),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: Icon(Icons.home_outlined, size: 100,
                        color: Colors.lightGreen),
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text("الجوهرة العالمية", style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                    ),),
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 15),
                    child: Text("Al Jawhara Intl", style: TextStyle(
                      fontSize: 15,
                      color: Colors.black87,
                    ),),
                  ),
                  SizedBox(
                      width: 290,
                      child:
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'البريد اللالكتروني',
                          hintStyle: TextStyle(color: Colors.orangeAccent),
                          prefixIcon: Icon(Icons.email),
                          hintTextDirection: TextDirection.rtl,
                        ),
                      ),
                    ),
                  const SizedBox(
                    height: 15,
                  ),
                  const SizedBox(
                    width: 290,
                    child:
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "كلمة المرور",
                        hintStyle: TextStyle(color: Colors.orangeAccent),
                        hintTextDirection: TextDirection.rtl,
                        prefixIcon: Icon(Icons.lock),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: SizedBox(
                        height: 50,
                        width: 200,
                        child: ElevatedButton(
                          style:  ElevatedButton.styleFrom(
                            backgroundColor: Colors.orangeAccent,
                            textStyle: const TextStyle(
                              color: Colors.white,
                            ),
                            elevation: 3, //elevation of button
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                          ),
                          onPressed: () {
                          },
                          child: const Text("تسجيل الدخول"),

                        ),
                      ),
                    ),

                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(70, 12, 60, 0),
                    child: Row(
                        children: [
                          Text("قم بالتسجيل" , style: TextStyle(
                            color: Colors.orangeAccent,
                            fontSize: 10,
                              fontWeight: FontWeight.bold

                          ),),
                          Text("ليس لديك حساب من قبل؟" , style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold

                          ),),

                        ],
                      ),
                  ),
                ],
              ),
            )
          ],
        )


    );
  }

}
