import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final _formKey = GlobalKey<FormState>();

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller = TextEditingController();
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
              height: 600,
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
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 290,
                          child:
                          TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty ||!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value))  {
                                  return "ادخل البريد الالكتروني الصحيح";
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'البريد اللالكتروني',
                                  hintStyle: TextStyle(color: Colors.orangeAccent),
                                  prefixIcon: Icon(Icons.email,color: Colors.grey,),
                                  hintTextDirection: TextDirection.rtl,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 2.5,
                                    ),
                                  )
                              ),
                              controller: controller,
                              onFieldSubmitted: (value) {
                                controller1.clear();
                              },
                            ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          width: 290,
                          child:
                          TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty || !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(value)) {
                                  return 'ادخل كلمة المرور الصحيحة';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "كلمة المرور",
                                  hintStyle: TextStyle(color: Colors.orangeAccent),
                                  hintTextDirection: TextDirection.rtl,
                                  prefixIcon: Icon(Icons.lock,color: Colors.grey,),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 2.5,
                                    ),
                                  )
                              ),
                              controller: controller1,
                              onFieldSubmitted: (value) {
                                controller1.clear();
                              },

                            ),
                        ),
                      ],
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
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('\tتم تسجيل الدخول بنجاح\t')),
                              );
                            }
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
