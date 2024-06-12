import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:ticket_station/pages/login/login.dart';

class Regster extends StatefulWidget {
  const Regster({Key? key}) : super(key: key);

  @override
  State<Regster> createState() => _RegsterState();
}

class _RegsterState extends State<Regster> {
  GlobalKey<FormState> fromstate = GlobalKey();
  var pass=TextEditingController();
  var pass1=TextEditingController();
  bool _isvisible=true;
  bool _isvisible1=true;
  @override
  Widget build(BuildContext context) {




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
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Center(
                        child: Text(
                          "Sigin Up",style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white


                        ),
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
                          child: Text("FirstName",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w600),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container
                          (
                            child: TextFormField
                            (
                              style: TextStyle(color: Colors.white),
                              validator: (value)
                              {
                                if(value!.isEmpty){
                                  return "Field is Empty";
                                }
                              },
                              keyboardType: TextInputType.emailAddress,
                              onFieldSubmitted:(value){
                                print(value);
                              } ,
                              
                              decoration: InputDecoration(
                                
                                filled: true,
                                fillColor: Colors.white.withOpacity(0.2),
                                hintText: "First Name" ,
                                hintStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder
                                (
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(12)
                                ),

                                prefixIcon: Icon(
                                  Icons.person,color: Colors.white,
                                ),
                              ),



                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 22),
                          child: Text("LastName",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w600),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              validator: (value){
                                if(value!.isEmpty){

                                  return "Field is Empty";
                                }
                              },
                              keyboardType: TextInputType.emailAddress,
                              onFieldSubmitted:(value){
                                print(value);
                              } ,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white.withOpacity(.2),
                                hintText: "Last Name" ,
                                hintStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder
                                (
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(12)
                                ),

                                prefixIcon: Icon(
                                  Icons.person,color: Colors.white,
                                ),
                              ),



                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 22),
                          child: Text("Email",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w600),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              validator: (value){
                                if(value!.isEmpty){

                                  return "Field is Empty";
                                }
                                if(value.characters=="@"){
                                  return"knllm";
                                }
                              },
                              keyboardType: TextInputType.emailAddress,
                              onFieldSubmitted:(value){
                                print(value);
                              } ,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white.withOpacity(.2),
                                hintText: "Email Address" ,
                                hintStyle: TextStyle(color: Colors.white,),
                                border: OutlineInputBorder
                                (
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(12)
                                ),

                                prefixIcon: Icon(
                                  Icons.email,color: Colors.white,
                                ),
                              ),



                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 22),
                          child: Text("Password",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w600),),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              controller: pass,
                              validator: (value){
                                if(value!.isEmpty){

                                  return "Field is Empty";
                                }
                                if(value.length!=9){
                                  return "Length is 9";
                                }
                              },
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: _isvisible,


                              decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle : TextStyle(color: Colors.white),
                                fillColor:  Colors.white.withOpacity(.2),
                                filled: true,
                                border: OutlineInputBorder
                                (
                                        borderSide: BorderSide(
                                        color: Colors.white
                                    ),
                                    borderRadius: BorderRadius.circular(12)
                                ),
                                suffixIcon: IconButton(color: Colors.white,
                                onPressed: (){
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
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 22),
                          child: Text("Confirm Password",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w600),),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              controller: pass1,
                              validator: (value){
                                if( value!.isEmpty){
                                  return "Field is Empty";
                                }
                                if( pass1.text!=pass.text){

                                  return "Both passwords not matched";
                                }
                              },
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: _isvisible1,
                              decoration: InputDecoration(
                                hintText: "Confirm Password",
                                hintStyle: TextStyle(color: Colors.white,),
                                fillColor: Colors.white.withOpacity(0.2),
                                filled: true,

                                border: OutlineInputBorder
                                (
                                    borderSide: BorderSide(
                                        color: Colors.white
                                    ),
                                    borderRadius: BorderRadius.circular(12)
                                ),
                                suffixIcon: IconButton(color: Colors.white,
                                onPressed: (){
                                  setState(() {
                                    _isvisible1=!_isvisible1;
                                  });
                                },icon: _isvisible1 ? Icon(Icons.visibility) : Icon(Icons.visibility_off),),
                                prefixIcon: Icon(
                                  Icons.lock,color: Colors.white,
                                ),
                              ),

                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 33.0,
                    ),

                    Center(
                      child: Container(
                        width: 300,
                        
                        child: MaterialButton(
                        padding: EdgeInsets.all(18),
                        color: Colors.white12,
                        shape: RoundedRectangleBorder
                        (
                          borderRadius: BorderRadius.circular(12)
                        ),
                          onPressed: () {
                          if (fromstate.currentState!.validate()){
                            print("isvilde");
                          }
                          else{
                            print("isvildevvvv");

                          }
                          
                        },
                          child: Text("Sigin Up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 55,top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("---------",style: TextStyle(color: Colors.white60,fontSize: 30,fontWeight: FontWeight.bold),),


                          SizedBox(width: 8,),
                          Text("Or Register With",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, color: Colors.white60),),
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
                              Tab(
                                icon: Image.asset("images/google.png",height: 40,),
                              ),


                              SizedBox(width: 18,),
                              Tab(
                                icon: Image.asset("images/facebook (2).png",height: 40,),
                              ),
                              SizedBox(width: 18,),

                              Tab(
                                icon: Image.asset("images/apple (1).png",height: 40,),
                              ),
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Do have Acoont ?",style: TextStyle(color: Colors.grey[500],fontSize: 18)),
                              TextButton(onPressed: (){
                                setState(() {
                                  Navigator.push(context,MaterialPageRoute(builder: (context)=> Login()));
                                });
                              }, child: Text("Login",style: TextStyle(color: Colors.grey[500],fontWeight: FontWeight.bold,fontSize: 18),))


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
