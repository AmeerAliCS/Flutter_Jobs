import 'package:flutter/material.dart';
import 'package:jobs/admin/jobs_admin.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                child: Column(
                  children: [
                    Text('تسجيل دخول المسؤول', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
                    Icon(Icons.vpn_key, size: 100,),
                    SizedBox(height: 40.0,),
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: ('اسم المسؤول'),
                        border: OutlineInputBorder()
                      )
                    ),
                    SizedBox(height: 20.0,),
                    TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                            hintText: ('كلمة المرور'),
                            border: OutlineInputBorder()
                        )
                    ),

                    SizedBox(height: 20.0,),
                    ElevatedButton(
                      onPressed: (){
                        print(emailController.text);
                        if (emailController.text == 'ali' && passwordController.text == '123456') {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => JobsAdmin()));
                        } else if (emailController.text == 'hassan' && passwordController.text == '123456') {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => JobsAdmin()));
                        }
                        else if (emailController.text == 'gaith' && passwordController.text == '123456') {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => JobsAdmin()));
                        }
                        else {
                          print('Error');
                        }
                      },
                      child: Text('تسجيل الدخول')
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//
// Padding(
// padding: EdgeInsets.only(top: 20.0),
// child: TextFormField(
// onSaved: (val) => email = val!,
// controller: emailController,
// validator: (val) =>
// !val!.contains('@') ? 'Invalid Email' : null,
// decoration: InputDecoration(
// hintText: 'Enter a valid email',
// labelText: 'Email',
// border: OutlineInputBorder(),
// icon: Icon(Icons.mail),
// ),
// ),
// ),
// Padding(
// padding: EdgeInsets.only(top: 20.0),
// child: TextFormField(
// obscureText: obscureText,
// onSaved: (val) => password = val!,
// controller: passwordController,
// validator: (val) =>
// val!.length < 6 ? 'Password too short' : null,
// decoration: InputDecoration(
// suffixIcon: GestureDetector(
// onTap: () {
// setState(() {
// obscureText = !obscureText;
// });
// },
// child: Icon(obscureText
// ? Icons.visibility
//     : Icons.visibility_off),
// ),
// hintText: 'Enter password, min length 6',
// labelText: 'Password',
// border: OutlineInputBorder(),
// icon: Icon(Icons.lock),
// ),
// ),
// ),
// SizedBox(
// height: 25.0,
// ),
// ElevatedButton(
// style: ElevatedButton.styleFrom(
// padding: EdgeInsets.all(10.0),
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(15)),
// ),
// onPressed: () {
// print(email);
// print(emailController.text);
// // if (email != '' &&  password != ''){
// //   if (email == 'ali@gmail.com' && password == '123456'){
// //     Navigator.of(context).push(
// //         MaterialPageRoute(builder: (context) => Home()));
// //   }
// // }
//
// },
// child: Text(
// 'تسجيل الدخول',
// style: TextStyle(fontSize: 18),
// )),