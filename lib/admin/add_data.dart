import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddData extends StatefulWidget {

  final collection;
  AddData({this.collection});

  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {

  TextEditingController titleController = TextEditingController();
  TextEditingController detailsController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
                    Text('اضافة وظيفة', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
                    SizedBox(height: 25.0,),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextField(
                          controller: titleController,
                          decoration: InputDecoration(
                              hintText: ('عنوان الوظيفة'),
                              border: OutlineInputBorder()
                          )
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextField(
                          controller: detailsController,
                          decoration: InputDecoration(
                              hintText: ('تفاصيل الوظيفة'),
                              border: OutlineInputBorder()
                          )
                      ),
                    ),

                    SizedBox(height: 15.0,),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextField(
                          controller: addressController,
                          decoration: InputDecoration(
                              hintText: ('موقع الوظيفة'),
                              border: OutlineInputBorder()
                          )
                      ),
                    ),

                    SizedBox(height: 15.0,),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextField(
                          controller: phoneNumberController,
                          decoration: InputDecoration(
                              hintText: ('رقم الموبايل'),
                              border: OutlineInputBorder()
                          )
                      ),
                    ),

                    SizedBox(height: 15.0,),
                    ElevatedButton(
                        onPressed: createCasesInFirestore,
                        child: Text('اضافة الوظيفة')),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }


  createCasesInFirestore() async {
    await FirebaseFirestore.instance.collection(widget.collection).doc().set({
      'title': titleController.text,
      'details': detailsController.text,
      'phoneNumber': phoneNumberController.text,
      'address': addressController.text,
    }).then((_){
      Navigator.pop(context);
    });
    }
  }

