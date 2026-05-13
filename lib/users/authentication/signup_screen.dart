import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:shopizo/users/authentication/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  var formkey = GlobalKey<FormState>();
  final nameController = TextEditingController();
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
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
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

                          // name 
                          TextFormField(
                            controller: nameController,
                            validator: (val) => val == "" ? "Please write email" : null,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.black,
                              ),
                              hintText: "name",
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

                            TextFormField(
                            controller: emailController,
                            validator: (val) => val == "" ? "Please write email" : null,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.black,
                              ),
                              hintText: "Email",
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
                          SizedBox(
                            height: 15,
                          ),
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
                                child: Text("SignUp",style: TextStyle(color: Colors.white),),
                                ),
                              ), 
                            ),


                            // Alredy have an account 
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Alredy have an account"),
                                TextButton(onPressed: (){
                                  Get.to(LoginScreen());
                                },
                                 child: const Text("Login Here",
                                 style: TextStyle(
                                  color: Colors.black,
                                 ),
                                 )
                                 ),
                              ],
                            ),
                            SizedBox(height: 10,),

                          
                        ],
                      ),
                    ),
                    
                  ),
                ),

              ],
             ),
            ),
            );
        }
        
        ),

    );
  }
}