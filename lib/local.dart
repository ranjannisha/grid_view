import 'package:flutter/material.dart';

class Local extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Local> {
  bool monVal=false;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text('LOCAL',style: TextStyle(fontSize: 18.0,color: Colors.white)),
        //   centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(2.0),
        child: new Card(
            clipBehavior: Clip.antiAlias,
            child: ListTile(
              title: Column(
                children: <Widget>[
                  Center(
                    child:  Image.asset('res/family.jpg',height: 100.0,width: 2100.0,),
                  ),
                  Padding
                    (
                    padding: const EdgeInsets.all(8.0),
                    child:new Row(
                      children: <Widget>[
                        Padding
                          (
                          padding: const EdgeInsets.only(right:8.0),
                          child:Text('LANGUAGE:',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w800),),),
                        new Flexible(
                          child:Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: TextField(
                              decoration: InputDecoration(
                                //Add th Hint text here.
                                hintText: "Language",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding
                    (
                    padding: const EdgeInsets.all(8.0),
                    child:new Row(
                      children: <Widget>[
                        Padding
                          (
                          padding: const EdgeInsets.only(right:8.0),
                          child:Text('USERNAME:',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w800),),),
                        new Flexible(
                          child:Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: TextField(
                              decoration: InputDecoration(
                                //Add th Hint text here.
                                hintText: "Username",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding
                    (
                    padding: const EdgeInsets.all(8.0),
                    child:new Row(
                      children: <Widget>[
                        Padding
                          (
                          padding: const EdgeInsets.only(right:8.0),
                          child:Text('PASSWORD:',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w800),),),
                        new Flexible(
                          child:Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: TextField(
                              decoration: InputDecoration(
                                //Add th Hint text here.
                                hintText: "Password",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text('Remember Me',style: TextStyle(fontSize: 12.0)),
                    value: monVal,
                    onChanged: (bool value) {
                      setState(() {
                        monVal = value;
                      });
                    },
                  ),
                  new Container(
                    margin: new EdgeInsets.all(0.0),
                    child: new Padding(
                      padding: new EdgeInsets.all(0.0),
                      child: new ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                                child: MaterialButton(
                                  minWidth: 100.0,
                                  height: 40.0,
                                  onPressed: () {
                                  },
                                  color: Colors.blue,
                                  child: Text('REGISTRATION',
                                      style: TextStyle(color: Colors.white)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                                child: MaterialButton(
                                  minWidth: 100.0,
                                  height: 40.0,
                                  onPressed: () {
                                  },
                                  color: Colors.blue,
                                  child: Text('LOGIN',
                                      style: TextStyle(color: Colors.white)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
        ),
      )
    );
  }
}
