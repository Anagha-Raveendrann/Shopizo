import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:get/state_manager.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var isObsecure = true.obs;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
      
      ),
      body: LayoutBuilder(
        builder: (context, cons) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: cons.maxHeight,
            ),
            child: SingleChildScrollView(
             child: Column(
              children: [
                // login screen header 
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 285,
                  child: Image.asset('assets/loginpageimage.jpg'),
                ),
                SizedBox(height: 10,),
                
                // login screen sign-in form
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        color: Colors.black26,
                        offset: Offset(0, -3),
                      )
                    ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 30, 30, 8),
                    child: Column(
                      children: [
                        // email
                        TextFormField(
                          controller: emailController,
                          validator: (val) => val == "" ? "Please write email" : null,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.black,
                            ),
                            hintText: "email......",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                color: Colors.white60,
                              ),                   
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 14,
                              vertical: 6,
                            ),
                            fillColor: Colors.white,
                            filled: true,
                          ),
                        ),
                         
                         SizedBox(height: 15,),
                        // password 
                        Obx(
                          () =>
                        
                         TextFormField(
                          controller: passwordController,
                          obscureText: isObsecure.value,
                          validator: (val) => val == "" ? "Please enter the passord" : null,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.vpn_key_sharp,
                              color: Colors.black,
                            ),
                            suffixIcon: Obx(
                              () => GestureDetector(
                                onTap: (){
                                  isObsecure.value = !isObsecure.value;
                                } ,
                                child: Icon(isObsecure.value ? Icons.visibility_off : Icons.visibility,
                                color: Colors.black,
                                ),
                              )
                            ),
                            hintText: "password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                color: Colors.white60,
                              ),                   
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 14,
                              vertical: 6,
                            ),
                            fillColor: Colors.white,
                            filled: true,
                          ),
                        ),
                        ),
                        // button
                        const SizedBox(height: 18,),
                        Material(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30),
                          child: InkWell(
                            onTap: (){
                    
                            },
                            borderRadius: BorderRadius.circular(30),
                            child: Padding(padding: EdgeInsets.symmetric(
                              vertical: 10,horizontal: 10),
                              child: Text("Login",style: TextStyle(color: Colors.white),),
                              ),
                            
                            ),
                            
                          ),
                        
                      ],
                    ),
                  ),
                  
                )

              ],
             ),
            ),
            );
        }
        
        ),

    );
  }
}