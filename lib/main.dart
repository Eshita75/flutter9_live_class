//Module 9
//MediaQuery| Wrap| LayoutBuilder


import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home(),);
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    //MediaQuery
    print(MediaQuery.of(context).size);
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).orientation);
    print(MediaQuery.of(context).displayFeatures);
    print(MediaQuery.displayFeaturesOf(context));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Home'),
      ),
      /*body: Center(
        child: Wrap(
          alignment: WrapAlignment.end,//(horizontally)
          crossAxisAlignment: WrapCrossAlignment.end,//(vertically)
          spacing: 4,
          children: [
            Text(MediaQuery.orientationOf(context).toString()),
            Text(MediaQuery.orientationOf(context).toString()),
            Text(MediaQuery.orientationOf(context).toString()),
            Text(MediaQuery.orientationOf(context).toString()),
            Text(MediaQuery.orientationOf(context).toString()),
            Text(MediaQuery.orientationOf(context).toString()),
            Text(MediaQuery.orientationOf(context).toString()),
          ],
        ),
      ),*/

      /*body: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints){
        if(constraints.maxWidth <500){
          return Center(child: Text('Mobile'));
        }else if(constraints.maxWidth<800){
          return Center(child: Text('Tablet'));
        }else if(constraints.maxWidth<1200){
          return Center(child: Text('Laptop'));
        }
        return Center(child: Text(constraints.maxWidth.toString()));
      },

      ),*/

      body: OrientationBuilder(builder: (BuildContext context, Orientation orientation) {
        if(orientation == Orientation.landscape){
          return Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.green,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    children: [
                      Text('1'),
                      Text('3'),
                      Text('4'),
                      Text('5'),
                      Text('6'),
                    ],
                  )
                ],
              ),
            ),
          );
        }else{
          return Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.red,
          );
        }
      },
    ),
    );
  }
}

