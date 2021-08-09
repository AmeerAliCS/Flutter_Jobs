import 'package:flutter/material.dart';
import 'package:jobs/pages/job_page.dart';

class Jobs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 20.0),
        child: ListView(
          children: [
            ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => JobPage(isAdmin: false , collectoinName: 'healthy',)));
              },
              title: Text('الوظائف الصحية',style: TextStyle(fontSize: 20), textDirection: TextDirection.rtl,),
              leading: Icon(Icons.shopping_bag_outlined,size: 40, color: Theme.of(context).primaryColor),
            ),
            Divider(height: 10.0),

            ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => JobPage(isAdmin: false , collectoinName: 'engineering',)));
              },
              title: Text('الوظائف الهندسية',style: TextStyle(fontSize: 20), textDirection: TextDirection.rtl,),
              leading: Icon(Icons.shopping_bag_outlined,size: 40, color: Theme.of(context).primaryColor),
            ),
            Divider(height: 10.0),

            ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => JobPage(isAdmin: false , collectoinName: 'tech',)));
              },
              title: Text('الوظائف التقنية',style: TextStyle(fontSize: 20), textDirection: TextDirection.rtl,),
              leading: Icon(Icons.shopping_bag_outlined,size: 40, color: Theme.of(context).primaryColor),
            ),
            Divider(height: 10.0),

            ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => JobPage(isAdmin: false , collectoinName: 'manager',)));
              },
              title: Text('الوظائف الادارية',style: TextStyle(fontSize: 20), textDirection: TextDirection.rtl,),
              leading: Icon(Icons.shopping_bag_outlined,size: 40, color: Theme.of(context).primaryColor),
            ),
            Divider(height: 10.0),

            ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => JobPage(isAdmin: false , collectoinName: 'scientific',)));
              },
              title: Text('الوظائف العلمية',style: TextStyle(fontSize: 20), textDirection: TextDirection.rtl,),
              leading: Icon(Icons.shopping_bag_outlined,size: 40, color: Theme.of(context).primaryColor),
            ),
            Divider(height: 10.0),

            ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => JobPage(isAdmin: false , collectoinName: 'arithmetic',)));
              },
              title: Text('الوظائف الحسابية',style: TextStyle(fontSize: 20), textDirection: TextDirection.rtl,),
              leading: Icon(Icons.shopping_bag_outlined,size: 40, color: Theme.of(context).primaryColor),
            ),
            Divider(height: 10.0),

            ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => JobPage(isAdmin: false , collectoinName: 'artistic',)));
              },
              title: Text('الوظائف الفنية',style: TextStyle(fontSize: 20), textDirection: TextDirection.rtl,),
              leading: Icon(Icons.shopping_bag_outlined,size: 40, color: Theme.of(context).primaryColor),
            ),
            Divider(height: 10.0),

            ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => JobPage(isAdmin: false , collectoinName: 'social',)));
              },
              title: Text('الوظائف الاجتماعية',style: TextStyle(fontSize: 20), textDirection: TextDirection.rtl,),
              leading: Icon(Icons.shopping_bag_outlined,size: 40, color: Theme.of(context).primaryColor),
            ),
            Divider(height: 10.0),

            ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => JobPage(isAdmin: false , collectoinName: 'legal',)));
              },
              title: Text('الوظائف القانونية',style: TextStyle(fontSize: 20), textDirection: TextDirection.rtl,),
              leading: Icon(Icons.shopping_bag_outlined,size: 40, color: Theme.of(context).primaryColor),
            ),
            Divider(height: 10.0),

            ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => JobPage(isAdmin: false , collectoinName: 'education',)));
              },
              title: Text('الوظائف التربوية',style: TextStyle(fontSize: 20), textDirection: TextDirection.rtl,),
              leading: Icon(Icons.shopping_bag_outlined,size: 40, color: Theme.of(context).primaryColor),
            ),
            Divider(height: 10.0),

            ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => JobPage(isAdmin: false , collectoinName: 'public',)));
              },
              title: Text('الوظائف العامة',style: TextStyle(fontSize: 20), textDirection: TextDirection.rtl,),
              leading: Icon(Icons.shopping_bag_outlined,size: 40, color: Theme.of(context).primaryColor),
            ),
            Divider(height: 10.0),

            ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => JobPage(isAdmin: false , collectoinName: 'military',)));
              },
              title: Text('الوظائف العسكرية',style: TextStyle(fontSize: 20), textDirection: TextDirection.rtl,),
              leading: Icon(Icons.shopping_bag_outlined,size: 40, color: Theme.of(context).primaryColor),
            ),
            Divider(height: 10.0),

            ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => JobPage(isAdmin: false , collectoinName: 'civil',)));
              },
              title: Text('الوظائف المدنية',style: TextStyle(fontSize: 20), textDirection: TextDirection.rtl,),
              leading: Icon(Icons.shopping_bag_outlined,size: 40, color: Theme.of(context).primaryColor),
            ),
            Divider(height: 10.0),


          ],
        ),
      ),
    );
  }
}
