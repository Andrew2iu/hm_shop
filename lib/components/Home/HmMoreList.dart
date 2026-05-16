import 'package:flutter/material.dart';

class HmMoreList extends StatefulWidget {
  HmMoreList({Key? key}) : super(key: key);

  @override
  _HmMoreListViewState createState() => _HmMoreListViewState();
}

class _HmMoreListViewState extends State<HmMoreList> {
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return Container(
          height: 100,
          alignment: Alignment.center,
          color: Colors.blue,
          child: Text(
            '更多页面$index',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        );
      },
    );
  }
}
