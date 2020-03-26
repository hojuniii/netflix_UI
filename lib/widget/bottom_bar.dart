import 'package:flutter/material.dart';


class Bottom extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      color:Colors.black,
      child: Container(
        height:70,
        child: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.transparent,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.home,
                size:16,
              ),
              child: Text(
                '홈',
                style: TextStyle(fontSize :11)
              ),
            ),
            Tab(
              icon: Icon(
                Icons.search,
                size:16,
              ),
              child: Text(
                '검색',
                style: TextStyle(fontSize: 11)
              ),
            ),
            Tab(
              icon: Icon(
                Icons.save_alt,
                size:16,
              ),
              child: Text(
                '저장한 콘텐츠 목록',
                style: TextStyle(fontSize: 11)
              ),
            ),
            Tab(
              icon: Icon(
                Icons.list,
               size:16,
              ),
              child: Text(
                '더보기',
                style: TextStyle(fontSize:  11)
              ),
            ),
          ],
        )
      )
    );
  }
}