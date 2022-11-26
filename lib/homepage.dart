import 'package:flutter/material.dart';
import 'globals.dart';
import 'main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            expandedHeight: 168,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Solar Planet System',
                style: TextStyle(fontSize: 18, color: Color(0xff9ED5C5)),
              ),
              background: Image.asset('assets/images/solar.jpg'),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: Global.planetDetails.length,
              (context, i) {
                return Container(
                  color: Colors.black,
                  child: Column(
                    children: [
                      Container(
                        height: 130,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.white),
                        ),
                        alignment: Alignment.center,
                        child: ListTile(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed('planet_info_page', arguments: Global.planetDetails[i]);
                          },
                          leading:
                              Image.asset(Global.planetDetails[i]['image']),
                          title: Text(Global.planetDetails[i]['name'],
                              style:
                                  TextStyle(color: Colors.white, fontSize: 19)),
                          subtitle: Text(
                              Global.planetDetails[i]['galaxy'],
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14)),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
