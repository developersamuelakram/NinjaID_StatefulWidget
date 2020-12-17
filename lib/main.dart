import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(

  home: NinjaCard(),

));


class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  // ADD AN INTEGER
  int ninjalevelcount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Ninja ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        //take away the shadow
        elevation: 0.0,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjalevelcount +=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          // in columns mainaxis is going down
          // crossaxis is going right
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/ninjaimage.jpg"),
                // to create image bigger
                radius:40.0 ,


              ),
            ),

            // add a divider

            Divider(
              height: 90.0,
              color: Colors.grey[800],
            ),
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 18.0,
              ),
            ),

            SizedBox(height:10.0),

            Text(
              "Chun-Li",
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30.0),

            Text(
              "Current Ninja Level",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 18.0,
              ),
            ),

            SizedBox(height:10.0),

            Text(
              '$ninjalevelcount',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            // giving us space
            SizedBox(height:30.0),

            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.white,
                ),

                SizedBox(width: 5.0),

                Text(
                  "chun@nextninja.com",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2,
                    fontSize: 15,
                  ),
                ),





              ],
            ),


          ],
        ),
      ),


    );
  }
}

