import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
class Transport extends StatefulWidget{
  const Transport({Key key}) : super(key: key);
  @override
  _TransportState createState() => _TransportState();
}
class _TransportState extends State<Transport> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
          overlayOpacity: 0,
          curve: Curves.easeInOutSine,
          animatedIcon: AnimatedIcons.add_event,
          children: [
            SpeedDialChild(
                child: Icon(Icons.group),
                label: "Group Buy",
                onTap: () => print("Group Buy")),
            SpeedDialChild(
                child: Icon(Icons.local_shipping),
                label: "Transportation",
                onTap: () => print("Transportation")),
            SpeedDialChild(
                child: Icon(Icons.shopping_cart),
                label: "Buy",
                onTap: () => print("Buy")),
          ]
      ),
      drawer: new Drawer
      (
        child: new ListView
          (
          children: <Widget>[
          new UserAccountsDrawerHeader
            (
            accountName: Text("Rishabh Agarwal"),
            accountEmail: Text("rishabh2001agarwal@gmail.com"),
            currentAccountPicture: new GestureDetector(
                child: new CircleAvatar
                  (
                  backgroundImage: new NetworkImage("https://i.stack.imgur.com/l60Hf.png"),
                  )
            ),
            decoration: new BoxDecoration
              (
                image: new DecorationImage
                  (
                    fit: BoxFit.fill,
                    image: new NetworkImage("https://www.oxygenna.com/wp-content/uploads/2015/11/18.jpg")
                )
              ),
          ),
          new ListTile(
            title: new Text("First Page"),
            trailing: new Icon(Icons.arrow_upward),
          ),
          new ListTile(
            title: new Text("Second Page"),
            trailing: new Icon(Icons.arrow_upward),
          ),
          new Divider(),
          new ListTile(
            title: new Text("Close"),
            trailing: new Icon(Icons.cancel),
            onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      appBar: AppBar(

        title: Text("Farmer's Portal"),

      ),

      body: Container(

          decoration: BoxDecoration(color: Colors.white),

          child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 8.0,
                  margin: new EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 6.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(64, 75, 96, 0.9)
                    ),
                    child: ListTile(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        leading: Container(
                          padding: EdgeInsets.only(right: 12.0),
                          decoration: new BoxDecoration(
                              border: new Border(
                                  right: new BorderSide(
                                      width: 10.0, color: Colors.white24)
                              )
                          ),
                          child: Icon(Icons.autorenew, color: Colors.white),
                        ),
                        title: Text(
                          "Items",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Row(
                          children: <Widget>[
                            Icon(
                                Icons.linear_scale, color: Colors.yellowAccent),
                            Text("Intermediate", style: TextStyle(color: Colors
                                .white))
                          ],
                        ),
                        trailing:
                        Icon(Icons.keyboard_arrow_right, color: Colors.white,
                            size: 30.0)
                    ),
                  ),
                );
              })

      ),


    );
  }


}