import 'package:flutter/material.dart';

class School extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<School> {
bool monVal=false;
bool visibility = false;
void toggle() {
  setState(() {
    visibility = !visibility;
  });
}
String email,password;
TextEditingController emailController = new TextEditingController();
TextEditingController passwordController = new TextEditingController();


@override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text('SCHOOL',style: TextStyle(fontSize: 18.0,color: Colors.white)),
     //   centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: CustomPaint(
        painter: CurvePainter(),
        child: new ListView(
            children : [
              Center(
                child:  Image.asset('res/family.jpg',height: 200.0,width: 200.0,),
              ),
              new Padding(padding: EdgeInsets.all(10.0),
                child:new TextFormField(
                  controller: emailController,
                  decoration: new InputDecoration(
                    labelText: "Enter Email",
                    prefixIcon: Icon(Icons.person),
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      borderSide: new BorderSide(
                      ),
                    ),
                    //fillColor: Colors.green
                  ),
                  validator: (val) {
                    if(val.length==0) {
                      return "Email cannot be empty";
                    }else{
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  style: new TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              new Padding(padding: EdgeInsets.all(10.0),
                child:new TextFormField(
                  autofocus: false,
                 controller: passwordController,
                  obscureText: visibility ? false : true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                        icon: visibility
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                        onPressed: toggle),
                    hintText: 'Password',
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      borderSide: new BorderSide(
                      ),
                    ),
                  ),
                  validator: (val) {
                    if(val.length==0) {
                      return "Password cannot be empty";
                    }else{
                      return null;
                    }
                  },
                  keyboardType: TextInputType.text,
                  style: new TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Remember Me'),
                value: monVal,
                onChanged: (bool value) {
                  setState(() {
                    monVal = value;
                  });
                },
              ),
              new Padding(padding: EdgeInsets.only(right:10.0),
                child:Align(
                  alignment: Alignment.bottomRight,
                  child:MaterialButton(
                    minWidth: 100.0,
                    height: 40.0,
                    onPressed: (){

                    },
                    color:  Colors.green,
                    child: Text('LOGIN', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Center(
                child:new Text('How to get username and password?', style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,)
              ),
              ),
            ]
        ),
      ),
    );
  }
}
class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.green;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.9167);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.875,
        size.width * 0.5, size.height * 0.9167);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.9584,
        size.width * 1.0, size.height * 0.9167);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}