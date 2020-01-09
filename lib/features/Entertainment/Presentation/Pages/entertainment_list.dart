import 'package:flutter/material.dart';

class EntertainmentListView extends StatefulWidget {
  EntertainmentListView({Key key}) : super(key: key);

  @override
  _EntertainmentListViewState createState() => _EntertainmentListViewState();
}

class _EntertainmentListViewState extends State<EntertainmentListView> {
  //data to be viewed by the list
  final List<Map> entertainmentLists = [
    {
      "name": "Afro Nation",
      "location": "AICC",
      "type": "Concert",
      "logoText":
          "https://cdn.pixabay.com/photo/2017/03/16/21/18/logo-2150297_960_720.png"
    },
    {
      "name": "Detty Rave",
      "location": "Ashaiman",
      "type": "Concert",
      "logoText":
          "https://cdn.pixabay.com/photo/2016/06/09/18/36/logo-1446293_960_720.png"
    },
    {
      "name": "Tidal Rave",
      "location": "Accra Street",
      "type": "Shows",
      "logoText":
          "https://cdn.pixabay.com/photo/2017/01/13/01/22/rocket-1976107_960_720.png"
    },
    {
      "name": "Detty Rave",
      "location": "Ashaiman",
      "type": "Concert",
      "logoText":
          "https://cdn.pixabay.com/photo/2016/06/09/18/36/logo-1446293_960_720.png"
    },
    {
      "name": "Meet and Greet",
      "location": "Tema",
      "type": "Shows",
      "logoText":
          "https://cdn.pixabay.com/photo/2016/06/09/18/36/logo-1446293_960_720.png"
    },
    {
      "name": "Manifestivities",
      "location": "Ashaiman",
      "type": "Concert",
      "logoText":
          "https://cdn.pixabay.com/photo/2016/06/09/18/36/logo-1446293_960_720.png"
    },
    {
      "name": "Raperholic",
      "location": "Tema",
      "type": "Concert",
      "logoText":
          "https://cdn.pixabay.com/photo/2016/06/09/18/36/logo-1446293_960_720.png"
    },
    {
      "name": "Dance Show",
      "location": "Madina",
      "type": "Play",
      "logoText":
          "https://cdn.pixabay.com/photo/2016/06/09/18/36/logo-1446293_960_720.png"
    },
    {
      "name": "Dora Why",
      "location": "Accra",
      "type": "Play",
      "logoText":
          "https://cdn.pixabay.com/photo/2016/06/09/18/36/logo-1446293_960_720.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      appBar: AppBar(
        title: Center(child: Text("Entertainment")),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 100),
          height: MediaQuery.of(context).size.height / 1,
          width: MediaQuery.of(context).size.width,
          child: buildListView(),
        ),
      ),
    );
  }

  //widget to return the list view of the shows
  Widget buildListView() {
    return ListView.builder(
        itemCount: entertainmentLists.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            width: double.infinity,
            height: 110,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(width: 3, color: Color(0xff696b9e)),
                    // image: DecorationImage(
                    //     image: CachedNetworkImageProvider(
                    //         Homes[index]['logoText']),
                    //     fit: BoxFit.fill),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        entertainmentLists[index]['name'],
                        style: TextStyle(
                            color: Color(0xff696b9e),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Color(0xfff29a94),
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(entertainmentLists[index]['location'],
                              style: TextStyle(
                                  color: Color(0xff696b9e),
                                  fontSize: 13,
                                  letterSpacing: .3)),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.school,
                            color: Color(0xfff29a94),
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(entertainmentLists[index]['type'],
                              style: TextStyle(
                                  color: Color(0xff696b9e),
                                  fontSize: 13,
                                  letterSpacing: .3)),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
