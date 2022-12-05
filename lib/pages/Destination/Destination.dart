import 'package:flutter/material.dart';
import '../../models/post.dart';
import '../../network/networkRequest.dart';

class Destination extends StatefulWidget {
  const Destination({Key? key}) : super(key: key);

  @override
  State<Destination> createState() => _DestinationState();
}

class _DestinationState extends State<Destination> {
  List<Post> postData = [];

  @override
  void initState() {
    super.initState();
    NetworkRequest.fetchPosts().then((dataFromServer) {
      setState(() {
        postData = dataFromServer;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 100,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color.fromRGBO(247, 247, 249, 1),
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_rounded,
                          size: 14,
                          color: Color.fromRGBO(27, 30, 40, 1),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            "Best Destination",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromRGBO(27, 30, 40, 1),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Container(
                        width: 20,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Text(
                          'Best Destination',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin:
                              const EdgeInsets.only(left: 35, top: 28, right: 10),
                              height: 640,
                              child: GridView.builder(
                                  itemCount: postData.length,
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: MediaQuery.of(context).size.width /
                                        (MediaQuery.of(context).size.height / 1.6),
                                    crossAxisSpacing: 10.0,
                                    mainAxisSpacing: 5.0,
                                  ),
                                  itemBuilder: (context, index) {
                                    return Container(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Stack(
                                              children: [
                                                ClipRRect(
                                                  borderRadius: BorderRadius.circular(16.0),
                                                  child: Image.network(
                                                    '${postData[index].img}',
                                                    width: 137,
                                                    height: 124,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 8,
                                                  right: 12,
                                                  child: Container(
                                                    width: 24,
                                                    height: 24,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                        color: Colors.white
                                                            .withOpacity(0.2),
                                                        border: Border.all(
                                                            width: 2,
                                                            color:
                                                            Colors.transparent)
                                                    ),
                                                    child: Image.asset(
                                                      'assets/icons/heart.png',
                                                      color: Colors.red,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            '${postData[index].name}',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.5,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.location_on_outlined,
                                                color:
                                                Color.fromRGBO(125, 132, 141, 1),
                                                size: 12,
                                              ),
                                              SizedBox(
                                                width: 3,
                                              ),
                                              Text(
                                                '${postData[index].address}',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color.fromRGBO(
                                                        125, 132, 141, 1),
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing: 0.3),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    );
                                  }
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
