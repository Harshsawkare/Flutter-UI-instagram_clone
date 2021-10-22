import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_clone/inside_login/viewPost.dart';
import 'package:instagram_clone/widgets/CustomPageRoute.dart';
import 'package:shimmer/shimmer.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  final List feed = [
    "https://images.unsplash.com/photo-1634040307830-bf5ef6623fc0?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMTV8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1631831831430-8447cf883291?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMjZ8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1633991670025-91fd387628b9?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMzd8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1634034111938-167e10f1f76a?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNDZ8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1633885278462-f6e52e3081fb?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNzB8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1633982429911-9c48cf7a0d2a?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNDd8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1634031936145-25ca0eff01e6?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNjJ8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1634031102606-159f83156c66?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNzR8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1634024242828-74dd2ad26d12?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxODJ8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1633985214685-420b04731e38?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOTV8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1633933249188-c9064a593941?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMDF8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1634010022836-80f414e47628?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMTF8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1633973229222-337462089fe5?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMTR8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1633969894076-1bc02f5b0a87?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMzB8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1633967072390-e7d62e4972e1?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMzN8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1633969438604-c36dba0c2dbd?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyODF8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1633956460991-ca6bb86efcaf?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyODB8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1633966849409-15619ac38fff?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyOTZ8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1633977277467-262212eec84e?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMDF8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1633717130646-68a9e7b3b6ea?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDI3fDZzTVZqVExTa2VRfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1633334886700-5357b9da5996?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEzfEJKSk10dGVESkE0fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1634099679320-6cb9289f329d?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDV8TThqVmJMYlRSd3N8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1633964876042-20e99b4b6c84?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDIyfHhIeFlUTUhMZ09jfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1616590249352-b945635a6136?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDM2fHhIeFlUTUhMZ09jfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          //search bar
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 10, left: 10, right: 10),
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Center(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(Icons.search_sharp, color: Colors.grey,),
                  ),
                  Text("Search",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontFamily: 'text'
                    ),)
                ],
              ),
            ),
          ),

          //feeds
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: StaggeredGridView.countBuilder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 3,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                    itemCount: feed.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                          ),
                          child: Image.network(feed.elementAt(index), fit: BoxFit.cover),
                        ),

                        onTap: (){
                          Navigator.of(context).push(
                            CustomPageRoute(
                              child: ViewPost(image: feed.elementAt(index),),
                            ),
                          );
                        },
                      );
                    },
                    staggeredTileBuilder: (index) {
                      return StaggeredTile.count(1, index.isEven ? 1 : 1);
                    }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
