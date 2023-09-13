import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String data = "";
  @override
  void initState() {
    data = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page')),
      body: SingleChildScrollView(child: Center(
        child: Card(
          margin: EdgeInsets.all(15),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text('User Login',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    )),
                SizedBox(height: 20,),
                login_input(),
              ],
            ),
          ),
        ),
      )),
    );
  }

  Widget login_input(){

    return Container(
      child: TextField(
        maxLength: 15,
        controller: TextEditingController(text: data),
        decoration: InputDecoration(
          hintText: 'Enter phone number',
          labelText: 'Phone',
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 0,style: BorderStyle.none
            )
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 1.2
            )
          ),
          prefixIcon: Icon(
            Icons.phone
          ),
          suffix: IconButton(
            icon: Icon(Icons.clear),
            onPressed: (){
              setState(() {
                data = "";
              });
            },
          )
        ),
        onChanged: (values) {
          data = values;
        },
        keyboardType: TextInputType.phone,
      ),
    );
  }
}
