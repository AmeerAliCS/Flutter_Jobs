import 'package:flutter/material.dart';

class JobDetails extends StatelessWidget {
  final String title;
  final String details;
  final String address;
  final String phoneNumber;

  JobDetails({required this.title, required this.details, required this.address, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: title != ''
          ? Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text(title, style: TextStyle(fontSize: 26),)),
            SizedBox(height: 15.0,),
            Center(child: Text(details, style: TextStyle(fontSize: 18),)),
            Center(child: Text(address, style: TextStyle(fontSize: 18),)),
            Center(child: Text(phoneNumber, style: TextStyle(fontSize: 18))),
          ],
        ),
      )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
