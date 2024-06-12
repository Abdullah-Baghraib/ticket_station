import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ticket_station/pages/login/register.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> fromstate = GlobalKey();
  bool _isvisible=true;

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;


    return Scaffold(
      body:



      Container(
        decoration: BoxDecoration(
            image: DecorationImage(

                image: AssetImage('images/1679822.jpg'),
                fit: BoxFit.fill
            )
        ),
        child: Center(
          child: SingleChildScrollView(

            child: Form(
              key: fromstate,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,

                children: [

                  Center(
                    child: Text(
                      "Login",style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white


                    ),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 22),
                        child: Text("Email",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w600),),
                      ),
                      Container(
                      padding: const EdgeInsets.all(12.0),

                        // color: Colors.white.withOpacity(0.2),
                        child: TextFormField(
                          
                          validator: (value){
                            if(value!.isEmpty){
                              return "Field is Empty";
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                          
                        style: TextStyle( color: Colors.white ),
                          decoration: InputDecoration(
                            
                            filled: true,
                            hintText: "Email Address",
                            hintStyle: TextStyle(color:Colors.white ),
                            fillColor: Colors.white.withOpacity(0.2),
                            focusedBorder:OutlineInputBorder
                              (
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(color: Colors.white),
                            ) ,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)
                            ),

                            prefixIcon: Icon(
                              Icons.email,color: Colors.white,
                                
                            ),
                          ),



                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 22),
                        child: Text("Password",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w600),),
                      ),

                      Container(
                        padding: const EdgeInsets.all(12.0),
                        child: TextFormField(
                          validator: (value){
                            if(value!.isEmpty){

                              return "Field is Empty";
                            }
                          },
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: _isvisible,

                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.2),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white
                                ),
                                borderRadius: BorderRadius.circular(12)
                            ),
                            border: OutlineInputBorder
                            (
                              borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(12)
                            ),
                            suffixIcon: IconButton(color: Colors.white,onPressed: (){
                              setState(() {
                                _isvisible=!_isvisible;
                              });
                            },icon: _isvisible ? Icon(Icons.visibility) : Icon(Icons.visibility_off),),
                            prefixIcon: Icon(
                              Icons.lock,color: Colors.white,
                            ),
                          ),

                        ),
                      ),
                    ],
                  ),



                  Container(
                    padding: const EdgeInsets.only(right: 14,bottom: 4),

                      // width: 20,
                      height: 35,
                      child: TextButton(onPressed: (){}, child:Text("Forget Password ?",style: TextStyle(color: Colors.grey[500],fontWeight: FontWeight.bold,fontSize: 16),))),
                  SizedBox(
                    height: 38.0,
                  ),

                  Center(
                    child: Container(
                      width: 300,
                      
                      child: MaterialButton
                      (
                        
                        padding: EdgeInsets.all(18),
                        color: Colors.white12,
                        shape: RoundedRectangleBorder
                        (
                          borderRadius: BorderRadius.circular(12)
                        ),
                        onPressed: (){
                        if (fromstate.currentState!.validate()){
                          Navigator.pushNamedAndRemoveUntil(context, "Home", (route) => false);
                          
                        }
                        else{


                        }
                        

                      },
                        child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 55,top: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [


                          Text("---------",style: TextStyle(color: Colors.white60,fontSize: 30,fontWeight: FontWeight.bold),),


                        SizedBox(width: 8,),
                        Text("Or Login With",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold , color: Colors.white54),),
                        SizedBox(width: 6,),

                        Text("---------",style: TextStyle(color: Colors.white60,fontSize: 30,fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                
                              },
                              child: Tab(
                                
                                  icon: Image.asset("images/google.png",height: 40,),
                                ),
                            ),


                            SizedBox(width: 18,),
                            Tab(
                              icon: Image.asset("images/facebook (2).png",height: 40,),
                            ),
                            SizedBox(width: 18,),

                            Tab(
                              icon: Image.asset("images/apple (1).png",height: 40,),
                            ),
                            SizedBox(width: 8,),
                          ],

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don\'t have Acoont ?",style: TextStyle(color: Colors.grey[500], fontSize: 16)),
                            TextButton(onPressed: (){
                              setState(() {
                                Navigator.push(context,MaterialPageRoute(builder: (context)=> Regster()));
                              });
                            }, child: Text("Register Now",style: TextStyle(color: Colors.grey[500],fontWeight: FontWeight.bold,fontSize: 18),))


                          ],
                        ),
                      ),

                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}