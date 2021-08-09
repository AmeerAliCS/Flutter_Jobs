import 'package:flutter/material.dart';
import 'package:jobs/admin/login.dart';
import 'package:jobs/pages/about.dart';
import 'package:jobs/pages/jobs.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              Icons.shopping_bag_outlined,
              size: 140,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(height: 60.0,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(7.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Jobs()));
                },
                child: Text(
                  'عرض الوظائف',
                  style: TextStyle(fontSize: 18),
                )),

            SizedBox(height: 15.0,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(7.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text(
                  'ادارة الوظائف',
                  style: TextStyle(fontSize: 18),
                )),

            SizedBox(height: 15.0,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(7.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => About()));
                },
                child: Text(
                  'عن التطبيق',
                  style: TextStyle(fontSize: 18),
                )),
          ],
        ),
      ),
    );
  }
}
