import 'package:flutter/material.dart';
import 'package:meme/controller/fetch.dart';
import 'package:http/http.dart';


class mainscreen extends StatefulWidget {
   mainscreen({super.key});


  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {

  String imgurl="";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateimg();
  }
 void updateimg() async{
   String getimgurl = await FetchMeme.fetchNewMeme();
   setState(() {
     imgurl=getimgurl;
   });
 }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Memes"),
      ),
      backgroundColor: Colors.black38,
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Random Memes",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(height: 10,),
           // Text("tagert 500 meme",style: TextStyle(fontSize: 18,color: Colors.white),),
            SizedBox(height: 20,),
            Image.network(imgurl),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                updateimg();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen, // Change the color here
              ),
              child: Text(
                "More fun?",
                style: TextStyle(color: Colors.white), // Change the text color if needed
              ),
            )


          ],
        ),
      ),
    );
  }
}
