import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(child: Text('قام بتصميم وبرمجة التطبيق', style: TextStyle(fontSize: 26),)),
            Center(child: Text('الحسن هادي مراد', style: TextStyle(fontSize: 22),)),
            Center(child: Text('علي حسين رسول', style: TextStyle(fontSize: 22),)),
            Center(child: Text('غيث عبد الرسول حسن', style: TextStyle(fontSize: 22),)),
          ],
        ),
      ),
    );
  }
}
