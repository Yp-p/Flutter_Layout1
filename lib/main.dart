import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Layout"),
          backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[FollowWidget(),
                Flexible(child:Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Image.network("https://cdn.ameriprisecontent.com/cds/alwp/advisor/john.e.mcdonald/john-mcdonald_ecd54_227x235.jpg",
                  width: 100,height: 150, fit: BoxFit.cover,),
                )),],
              ),
              ImageWidget(),
              IconWidget(),
              Divider(color: Colors.black26, thickness: 2,height: 50,),
              TextWidget()

            ],
          ),
        ),
      ),
    );
  }
}

class FollowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "John McDonold",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Row(
            children: <Widget>[Icon(Icons.location_on), Text("Los Angle, CA")],
          ),
          SizedBox(height: 40,),
          RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            onPressed: (){},
            child: Text(
              "Follow",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.green,
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "34",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Posts",style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54
                  ),)
                ],
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "1256",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Follower",style: TextStyle(
                      fontSize: 15,
                      color: Colors.black54
                  ),)
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ImageWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Image.network("https://c4.wallpaperflare.com/wallpaper/695/41/202/5bd0f1476577b-wallpaper-preview.jpg",
            height: 130,
            fit: BoxFit.cover,),
          ),

          Flexible(
            flex: 1,
            child: Image.network("https://c4.wallpaperflare.com/wallpaper/128/9/144/apple-ios-wallpaper-preview.jpg",

              height: 130,
              fit: BoxFit.cover,),
          ),
          Flexible(
            flex: 1,
            child: Image.network("https://c4.wallpaperflare.com/wallpaper/681/545/122/trees-covered-with-sand-during-daytime-bamberg-bamberg-wallpaper-preview.jpg",

              height: 130,
              fit: BoxFit.cover,),
          ),
          Flexible(
            flex: 1,
            child: Image.network("https://c1.wallpaperflare.com/preview/609/184/898/rose-purple-blossom-bloom.jpg",

              height: 130,
              fit: BoxFit.cover,),
          ),
          Flexible(
            flex: 1,
            child: Image.network("https://c4.wallpaperflare.com/wallpaper/792/129/306/mountains-and-grass-land-photography-wallpaper-preview.jpg",
              height: 130,
              fit: BoxFit.cover,),
          ),
        ],
      ),
    );
  }
}

class IconWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Icon(Icons.mail,size: 25,),
        Icon(Icons.face,size: 25,),
        Icon(Icons.print,size: 25,),
        Icon(Icons.add_alert,size: 25,),
        Icon(Icons.call,size: 25,),
      ],
    );
  }
}

class TextWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("About", style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),),
          Text("The oldest classical Greek and Latin writing had little or no space between words and could be written in boustrophedon (alternating directions). Over time, text direction"
              " (left to right) became standardized, and word dividers and terminal punctuation became common.",
          style: TextStyle(

          ),),
        ],
      ),
    );
  }
}
