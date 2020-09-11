import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'MyModel.dart';


class ThreeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyModel(),
//      child: MaterialApp(
//        title: 'Flutter Demo',
//        theme: ThemeData(
//
//          primarySwatch: Colors.blue,
//          visualDensity: VisualDensity.adaptivePlatformDensity,
//        ),
      // home:Scaffold(
      child: Scaffold(
        appBar: AppBar(

          title: Text('ThreeScreen'),
        ),
        body: Center(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),

              Text(
                '${context.watch<MyModel>().count}',
                style: Theme.of(context).textTheme.headline4,
              ),
              RaisedButton(
                child: Text(
                  'Second',
                  style: TextStyle(fontSize: 30),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
//                    Navigator.push(
//                      context,
//                      MaterialPageRoute(builder: (context) => MyApp()),
//                    );
                },
                color: Colors.lightBlueAccent,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                elevation: 8.0,
              ),

            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.read<MyModel>().increment(),
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
      // ),
    );
  }
}
