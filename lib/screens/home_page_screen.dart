import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  static String route = "homePage";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar:
            BottomNavigationBar(items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.black), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.ondemand_video, color: Colors.black), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined, color: Colors.black),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded, color: Colors.black),
              label: ""),
        ]),
        body: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                  "https://logos-world.net/wp-content/uploads/2020/04/Instagram-Logo-2010-2013.png",
                  color: Colors.black,
                  width: MediaQuery.of(context).size.width / 3.2),
              Row(
                children: [
                  Icon(
                    Icons.add_box_outlined,
                    size: MediaQuery.of(context).size.width / 12,
                  ),
                  Icon(Icons.favorite_border_outlined,
                      size: MediaQuery.of(context).size.width / 12),
                  Icon(Icons.messenger_outline,
                      size: MediaQuery.of(context).size.width / 12),
                ],
              )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.width / 4,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width / 4.5,
                        height: MediaQuery.of(context).size.width / 5,
                        child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://th.bing.com/th/id/OIP.inXSw5jbycIIlXC1dIXdiwHaIL?pid=ImgDet&rs=1"))),
                    Text("User Name"),
                  ],
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
          Divider(thickness: 1, color: Colors.grey),
         Expanded(
           child: ListView.builder(itemBuilder: (context, index) {
             return Column(
               children: [
                 ListTile(
                   leading: CircleAvatar(backgroundImage:NetworkImage(
                       "https://th.bing.com/th/id/OIP.inXSw5jbycIIlXC1dIXdiwHaIL?pid=ImgDet&rs=1") ),title: Text("Name"),
                 trailing: Icon(Icons.more_horiz)),
                 Image.network("https://c.ndtvimg.com/lionel-messi-bye-afp_625x300_1530438857117.jpg?output-quality=80&downsize=1278:*"),
                 Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                       children: [
                         Icon(Icons.favorite_border,size: 30,),
                         Icon(Icons.messenger_outline_rounded,size: 30),
                         Icon(Icons.send_sharp,size: 30)
                       ],
                     ),
                     Icon(Icons.bookmark_border_sharp,size: 30)
                   ],
                 ),
                 Align( alignment: Alignment.centerLeft,child : Text("Liked by Ronaldo and 35M ",style: TextStyle(fontWeight: FontWeight.bold) ,))
                 
               ],

             );
           },),
         )
        ]),
      ),
    );
  }
}
