import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool hidview=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.deepPurpleAccent,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 85),
                child: Text('Instagram',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.white),),
              ),
             Padding(
               padding: const EdgeInsets.all(40),
               child: Text('Log to see photos and videos from your frinds',style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.white),
               textAlign: TextAlign.center,
               ),
             ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text('username',style:TextStyle(color: Colors.white),),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0),
                    )
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  obscureText: hidview,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState((){
                          if(hidview){
                            hidview=false;
                          }else{
                            hidview=true;
                          }

                        });
                      },
                      icon: Icon(
                        hidview?Icons.visibility :Icons.visibility_off,
                      ),
                    ),
                    label: Text('password',style: TextStyle(color: Colors.white),),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0)),
                    )
                  ),
                ),
              ),
              ElevatedButton(onPressed: (){}, child: Text('LOG IN'),),
              TextButton(onPressed: (){}, child: Text('Forgot Login Details?Get Help Signing in.')),
              Text('OR',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){}, child:Row(
                  children: [
                    SizedBox(width: 70,),
                    Image(image: AssetImage('asset/image/facebook.png',),
                    height: 20,
                      width: 20,color: Colors.white,
                    ),
                    Text('LOG IN WITH FACEBOOK'),
                  ],
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: ElevatedButton(onPressed: (){}, child: Row(
                  children: [
                    SizedBox(width: 70,),
                    Text("Don't have an Account?"),
                    Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
