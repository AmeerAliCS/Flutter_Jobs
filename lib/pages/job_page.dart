import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:jobs/pages/job_details.dart';

class JobPage extends StatefulWidget {

  final collectoinName;
  final isAdmin;

  JobPage({this.collectoinName, required this.isAdmin});

  @override
  _JobPageState createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {

  CollectionReference healthy = FirebaseFirestore.instance.collection('healthy');
  CollectionReference engineering = FirebaseFirestore.instance.collection('engineering');
  CollectionReference tech = FirebaseFirestore.instance.collection('tech');
  CollectionReference manager = FirebaseFirestore.instance.collection('manager');
  CollectionReference scientific = FirebaseFirestore.instance.collection('scientific');
  CollectionReference arithmetic = FirebaseFirestore.instance.collection('arithmetic');
  CollectionReference artistic = FirebaseFirestore.instance.collection('artistic');
  CollectionReference social = FirebaseFirestore.instance.collection('social');
  CollectionReference legal = FirebaseFirestore.instance.collection('legal');
  CollectionReference education = FirebaseFirestore.instance.collection('education');
  CollectionReference public = FirebaseFirestore.instance.collection('public');
  CollectionReference military = FirebaseFirestore.instance.collection('military');
  CollectionReference civil = FirebaseFirestore.instance.collection('civil');

  @override
  Widget build(BuildContext context) {
    print(widget.collectoinName);
    return Scaffold(
      // floatingActionButton: widget.isAdmin == true ?
      // FloatingActionButton(onPressed: (){print ('click');}) : null,
      body: Container(
        child: StreamBuilder<QuerySnapshot>(
            stream: widget.collectoinName == 'healthy' ? healthy.snapshots():
            widget.collectoinName == 'engineering' ? engineering.snapshots() :
            widget.collectoinName == 'tech' ? tech.snapshots() :
            widget.collectoinName == 'manager' ? manager.snapshots() :
            widget.collectoinName == 'scientific' ? scientific.snapshots() :
            widget.collectoinName == 'arithmetic' ? arithmetic.snapshots() :
            widget.collectoinName == 'artistic' ? artistic.snapshots() :
            widget.collectoinName == 'social' ? social.snapshots() :
            widget.collectoinName == 'legal' ? legal.snapshots() :
            widget.collectoinName == 'education' ? education.snapshots() :
            widget.collectoinName == 'public' ? public.snapshots() :
            widget.collectoinName == 'military' ? military.snapshots() :
            widget.collectoinName == 'civil' ? civil.snapshots() : null,

            builder: (BuildContext context,
                AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                return Text("Something went wrong");
              }

                if (!snapshot.hasData){
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }

                var data = snapshot.data!.docs;
                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index){
                    return Container(
                      margin: EdgeInsets.all(7.0),
                      child: ListTile(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => JobDetails(
                            title: data[index]['title'],
                            details: data[index]['details'],
                            address: data[index]['address'],
                            phoneNumber: data[index]['phoneNumber'],
                          )));
                        },
                        title: Text(data[index]['title'], style: TextStyle(fontSize: 20), textDirection: TextDirection.rtl),
                        subtitle: Text(data[index]['address'], textDirection: TextDirection.rtl),
                        leading: Icon(Icons.shopping_bag_outlined,size: 40, color: Theme.of(context).primaryColor),
                      ),
                    );
                  }
                );
              }
          ),

      ),
    );
  }
}