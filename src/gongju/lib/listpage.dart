import 'package:flutter/material.dart';
import 'package:gongju/detailpage.dart';
import 'package:gongju/placeregister.dart';
import 'package:gongju/searchpage.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> titles = <String>['의류, 신발, 가전제품 보관 가능해요','가전제품 보관 가능합니다','의류 보관 가능합니다','신발 보관 가능합니다','의류 보관 가능합니다','의류, 신발, 가전제품 보관 가능해요'];
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchPage()),
            );
          },
          child: Container(
            padding: EdgeInsets.only(top:7,bottom:7),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                SizedBox(width:10),
                Icon(Icons.search, color: Colors.grey[700]),
                Text(
                  " 내 주변 공간 탐색",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ]
            ),
            // decoration: InputDecoration(
            //   hintText: '내 주변 공간 검색',
            //   prefixIcon: Icon(Icons.search),
            // ),
          ),
        ),
      ),
      body: ListView.separated(
        itemCount: 6, // dummy item count
        itemBuilder: (context, index) {
          return Stack(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailPage()),
                  );
                },
                child: Container(
                  child: Row(
                    children: <Widget>[
                      const SizedBox(width:13),
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.asset('assets/images/place.jpg', fit: BoxFit.cover),
                      ),
                      const SizedBox(width:5),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height:13),
                              Text(
                                titles[index],
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(height:5),
                              const Text(
                                '해양동 • 3시간 전',
                                style: TextStyle(
                                  color:Colors.black,
                                ),
                              ),
                              const SizedBox(height:5),
                              const Text(
                                '20000원',
                                style: TextStyle(
                                  fontSize:20,
                                  fontWeight: FontWeight.bold,
                                  color:Colors.black,
                                ),
                              ),
                              const SizedBox(height:20),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
              ),
            ),

            const Positioned(
              bottom: 5,
              right:15,
              child: Row(
                children: [
                  Icon(Icons.favorite_border),
                  Text(
                    "2",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();  // 각 아이템 사이에 Divider 위젯을 사용하여 선을 그립니다.
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/home.png',width:20,height:20),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/around.png',width:20,height:20),
            label: '내 주변',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/chatting.png',width:20,height:20),
            label: '채팅',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/mypage.png',width:20,height:20),
            label: '마이페이지',
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PlaceRegisterPage()),
                );
              },
              child: Container(
                margin:const EdgeInsets.all(5.0),
                width:100,
                height:50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xFFFF008A), // 배경색
                  borderRadius: BorderRadius.circular(30), // 테두리 둥글게
                ),
                child: const Text(
                  '등록하기', // 텍스트 내용
                  style: TextStyle(
                    color: Colors.white, // 텍스트 색상
                    fontSize: 17, // 텍스트 크기
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
    );
  }
}
