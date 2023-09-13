import 'package:first_flutter/login_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: 'Flutter App',
      home: Scaffold(
        body: Center(child: stf_sample()),
        appBar: AppBar(title: Text('List View'),elevation: 3),
      ),
      theme: ThemeData(
        useMaterial3: true,
      )
    )
  );
}

class second extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        print("Hello Rifat!");
      },
      child: Container(
        height: 50,
        width: 120,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle , color: Colors.indigo,borderRadius: BorderRadius.circular(10)
        ),
        child: Center(child: Text('Submit')),
      ),
    );
  }
}
class stf_sample extends StatefulWidget {
  const stf_sample({super.key});

  @override
  State<stf_sample> createState() => _stf_sampleState();
}

class _stf_sampleState extends State<stf_sample> {
  String data = "";
  @override
  // void initState() {
  //   data = "Initial Data";
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      children: [
        Text(data),
        SizedBox(height: 10,),
        FilledButton(onPressed: (){
          // setState(() {
          //   data = "Clicked Data";
          // });
          Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
        },
        child: Text('Ok'),
        )
      ],mainAxisAlignment: MainAxisAlignment.center,
    ),);
  }
}

class listview extends StatefulWidget {
  const listview({super.key});

  @override
  State<listview> createState() => _listviewState();
}

class _listviewState extends State<listview> {
  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.only(left: 10,top: 10,right: 10,bottom: 0),
      children: [
        ListTile(
          title: Text('Ripat Rabbi'),
          subtitle: Text('Developer'),
          trailing: Icon(Icons.arrow_forward_ios_outlined),
          leading: CircleAvatar(
            backgroundColor: Colors.indigo.shade500,
            child: Text('R'),
          ),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
          tileColor: Colors.black12,
          onTap: () {
            print('Hello');
          },
        ),SizedBox(
          height: 3,
        ),
        ListTile(
          title: Text('Ripat Rabbi'),
          subtitle: Text('Developer'),
          trailing: Icon(Icons.arrow_forward_ios_outlined),
          leading: CircleAvatar(
            backgroundColor: Colors.indigo.shade500,
            child: Text('R'),
          ),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
          tileColor: Colors.black12,
          onTap: () {
            print('Hello');
          },
        ),
        SizedBox(
          height: 3,
        ),
        ListTile(
          title: Text('Ripat Rabbi'),
          subtitle: Text('Developer'),
          trailing: Icon(Icons.arrow_forward_ios_outlined),
          leading: CircleAvatar(
            backgroundColor: Colors.indigo.shade500,
            child: Text('R'),
          ),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
          tileColor: Colors.black12,
          onTap: () {
            print('Hello');
          },
        ),SizedBox(
          height: 3,
        ),
      ],
    );
  }
}

