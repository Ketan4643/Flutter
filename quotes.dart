import 'package:flutter/material.dart';



class QuotesPage extends StatefulWidget {
  const QuotesPage({Key? key}) : super(key: key);

  @override
  /*_QuotesPageState createState(){
    return _QuotesPageState();
  }*/

  _QuotesPageState createState() => _QuotesPageState();

}

class _QuotesPageState extends State<QuotesPage> {

  var quotes = [
    "black",
    "blue",
    "orange",
    "red"
  ];
  getTextWidgets(){
    var textWidgets = <Widget>[];
    quotes.forEach((element) {
      textWidgets.add(Text(element));
      textWidgets.add(Divider());
    });
    return textWidgets;
  }
  var idx = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
         children:[
          InkWell(
            child:

          Text(getTextWidgets()),

            onTap: (){
            setState( () {

              if(idx == quotes.length-1){
                idx = 0;
              }else if(quotes[idx]=="black"){
                 ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black);
              }
              else if(quotes[idx]=="blue"){
                  ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.blue);
              }
              else{
                ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.orange);
              }
    }


                );
    },
      ),
          Divider(),
      ],
      ),
    );
  }
}

