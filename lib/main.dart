import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player=AudioPlayer()..setReleaseMode(ReleaseMode.loop);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClipPath example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green,),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final tabs=[
    Screen1(),
    Screen2(),
    Screen3(),
    Screen4(),
  ];

  int previousIndex=0;
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    if (currentIndex==0) player.play(AssetSource("1.mp3"));
    return Scaffold(
      appBar: AppBar(title: Text('我的自傳'),
        centerTitle: true,),
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        selectedFontSize: 18,
        unselectedFontSize: 14,
        iconSize: 30,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(icon: currentIndex==0?Image.asset('assets/f1.jpg', width: 40, height: 40,):Image.asset('assets/f1.jpg', width: 30, height: 30,), label: '自我介紹',),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: '學習歷程',),
          BottomNavigationBarItem(icon: Icon(Icons.scale_outlined), label: '學習計畫',),
          BottomNavigationBarItem(icon: Icon(Icons.engineering), label: '專業方向',),
        ],
        onTap: (index) {
          setState(() {
            previousIndex=currentIndex;
            currentIndex=index;
            if (index==0) {
              if (previousIndex==currentIndex) player.resume();
              player.stop();
              player.play(AssetSource("1.mp3"));
            }
            if (index==1) {
              if (previousIndex==currentIndex) player.resume();
              player.stop();
              player.play(AssetSource("2.mp3"));
            }
            if (index==2) {
              if (previousIndex==currentIndex) player.resume();
              player.stop();
              player.play(AssetSource("3.mp3"));
            }
            if (index==3) {
              if (previousIndex==currentIndex) player.resume();
              player.stop();
              player.play(AssetSource("4.mp3"));
            }
          });
        },
      ),

    );
  }
}

class Screen1 extends StatelessWidget {
  Screen1({super.key});

  final String title = 'Who am I'; // Title for the autobiography section

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Title section
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
          ),
          // Autobiography content
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.amberAccent,
                  offset: Offset(6, 6),
                ),
              ],
            ),
            child: Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: '我出生在一個溫馨又充滿愛的小家庭。',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  const TextSpan(text: '\n\n'),
                  TextSpan(
                    text:
                    '父親在退休前是一家公司的職員，而母親則是一名小學教師。他們兩人用辛勤的工作和無私的愛，培養了我們三兄妹成長。我的哥哥如今是一名工程師，姐姐則是一家公司的管理人員。在我成長的過程中，即便家庭也曾面對挑戰，父母總能堅強地扛起責任，為我們提供一個充滿支持與歸屬感的環境。家裡一直是我最重要的避風港，也是我無論身處何地，心靈最依賴的地方。',
                  ),
                  const TextSpan(text: '\n\n'),
                  TextSpan(
                    text:
                    '小學時期的我性格比較內向，但小孩子的天真和純潔，讓我很快與同學們成為好朋友。那時候，我熱愛運動，並加入了學校的田徑隊和籃球隊。雖然我的運動天賦不算突出，也不是校隊的主力選手，但對運動的熱忱和與隊友訓練時的快樂，讓我特別享受這段時光。跑道上的每一次衝刺、籃球場上的每一場比賽，雖然有汗水，但更多的是童年的純粹與快樂。',
                  ),
                  const TextSpan(text: '\n\n'),
                  TextSpan(
                    text:
                    '進入中學後，我的性格發生了一些變化，變得比較調皮好玩。由於幾次上課不聽話，我還被送到訓導處"喝茶"過。幸好在幾次教訓之後，我總算學乖了一些。那時的我，對學業並不算特別上心，課業成績多數只是低空飛過，保持及格就好。回想起來，或許有些後悔當時沒有更認真學習，讓自己建立更好的習慣。但我也感謝那段不算特別理想的時期，它塑造了現在的我，讓我更加珍惜時間，更懂得努力的重要性。',
                  ),
                  const TextSpan(text: '\n\n'),
                  TextSpan(
                    text:
                    '中學時期最大的收穫莫過於結交了一群摯友，這些朋友陪我度過了許多快樂與難忘的時光，直到今日我們仍是彼此信賴的知己。',
                  ),
                  const TextSpan(text: '\n\n'),
                  TextSpan(
                    text:
                    '上大學後，我的生活迎來了新的挑戰與轉變。如今已經是大學三年級的我，仍然感覺時間過得飛快。起初，我對資訊領域幾乎一無所知，對編程和電腦相關的知識充滿陌生感。然而，透過這幾年的努力學習，我逐漸掌握了相關的技能，並對這個領域產生了濃厚的興趣。',
                  ),
                  const TextSpan(text: '\n\n'),
                  TextSpan(
                    text:
                    '我不是一個充滿野心的人，但對未來有著簡單卻明確的願景。我希望能透過自己的努力，擁有良好的技術與能力，在工作中穩定發展，掙錢回報父母，並最終成立自己的家庭。人生苦短，我追求的是與家人和摯愛的人一起分享歡樂時光，創造屬於我們的回憶。對我而言，與愛的人共同度過每一天，便是生活最大的幸福與滿足。',
                  ),
                ],
              ),
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 18, height: 1.6, color: Colors.black87),
            ),
          ),
          SizedBox(height: 15),
          Container(
            color: Colors.redAccent,
            child: Image.asset('assets/f1.jpg'),
            height: 200,
            width: 200,
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.purple, width: 2, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                      image: AssetImage('assets/f1.jpg'), fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.purple, width: 2, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                      image: AssetImage('assets/f1.jpg'), fit: BoxFit.cover),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // 標題部分
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text(
              '我的學習歷程',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
                fontFamily: 'Roboto',
              ),
            ),
          ),
          // 學習歷程內容
          Container(
            padding: const EdgeInsets.all(25),
            margin: const EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(4, 4),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: '自從小學以來，我就一直在不同的環境中學習和成長。在家庭的影響下，我養成了努力和堅持的態度。我的學習歷程分為幾個階段：\n\n',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black54),
                  ),
                  const TextSpan(text: '1. 小學時期：\n'),
                  TextSpan(
                    text:
                    '這時的我性格較為內向，但在學校的田徑隊和籃球隊中，我培養了合作精神和運動熱情。雖然我並非天生的運動員，但那段時間讓我學會了如何與他人協作，並且明白了持續努力的價值。',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  const TextSpan(text: '\n\n'),
                  const TextSpan(text: '2. 中學時期：\n'),
                  TextSpan(
                    text:
                    '進入中學後，我的性格變得較為活躍，也開始面對更多的學業壓力。那段時光對我來說是挑戰與成長並存的時期。儘管有時候我的學業表現平平，但也讓我學會了如何調整自己，並且反思時間管理的重要性。',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  const TextSpan(text: '\n\n'),
                  const TextSpan(text: '3. 大學時期：\n'),
                  TextSpan(
                    text:
                    '上大學後，我選擇了資訊領域作為我的專業。起初，我對這些課程幾乎一無所知，但隨著時間的推移，我逐漸發現了對編程的熱情。我深深體會到，學習並非一蹴而就，而是需要堅持不懈的努力和持續的學習。',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  const TextSpan(text: '\n\n'),
                  const TextSpan(
                    text:
                    '回顧這些年，我不僅學到了專業知識，還從每個階段的挑戰中汲取了寶貴的經驗，這些經驗塑造了今天的我。',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),
                  ),
                ],
              ),
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 16, height: 1.7, color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // 標題部分
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text(
              '我的學習計劃',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
                fontFamily: 'Roboto',
              ),
            ),
          ),
          // 學習計劃內容
          Container(
            padding: const EdgeInsets.all(25),
            margin: const EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(4, 4),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: '進入大學後，我對自己未來的學習有了更清晰的規劃。未來，我希望能達成以下幾個目標：\n\n',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black54),
                  ),
                  const TextSpan(text: '1. 提升編程技能：\n'),
                  TextSpan(
                    text:
                    '作為資訊領域的學生，我計劃深入學習各種編程語言和技術。我會持續加強對算法和資料結構的理解，並且積極參與實習和課外項目，將理論知識與實際經驗結合。',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  const TextSpan(text: '\n\n'),
                  const TextSpan(text: '2. 提高英語能力：\n'),
                  TextSpan(
                    text:
                    '作為一個國際化日益增強的領域，英語能力對我的未來發展至關重要。我計劃報名參加一些英語學習班，並努力提升自己的聽、說、讀、寫能力，尤其是在技術文獻的閱讀和專業交流方面。',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  const TextSpan(text: '\n\n'),
                  const TextSpan(text: '3. 考取證照和參加專業活動：\n'),
                  TextSpan(
                    text:
                    '我計劃參加一些行業內公認的專業證照考試，如軟件開發相關的認證。同時，我還會積極參與學術會議、黑客松等活動，擴展自己的視野和人脈。',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  const TextSpan(text: '\n\n'),
                  const TextSpan(text: '4. 跨領域學習：\n'),
                  TextSpan(
                    text:
                    '我希望在學習編程的同時，也能涉足一些與技術相關的領域，如人工智能、大數據等。這不僅能拓寬我的專業領域，也能讓我在未來的職場中擁有更多的選擇。',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  const TextSpan(text: '\n\n'),
                  const TextSpan(
                    text:
                    '我相信這些學習計劃將使我成為一名更全面、更具競爭力的專業人才。',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),
                  ),
                ],
              ),
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 16, height: 1.7, color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }
}

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // 標題部分
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text(
              '我的專業方向',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
                fontFamily: 'Roboto',
              ),
            ),
          ),
          // 專業方向內容
          Container(
            padding: const EdgeInsets.all(25),
            margin: const EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(4, 4),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: '對於未來，我有一個簡單但明確的職業目標。我希望能在資訊技術領域發展，成為一名技術全面且穩定發展的專業人士。我的專業方向主要集中在以下幾個方面：\n\n',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black54),
                  ),
                  const TextSpan(text: '1. 軟件開發與工程：\n'),
                  TextSpan(
                    text:
                    '我的學術背景讓我對編程和軟件開發充滿熱情。在未來的職業生涯中，我希望能夠參與開發創新的軟件產品，無論是移動應用還是大規模的企業級系統。我會專注於提升自己在前端、後端以及全棧開發領域的能力。',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  const TextSpan(text: '\n\n'),
                  const TextSpan(text: '2. 人工智能與機器學習：\n'),
                  TextSpan(
                    text:
                    '隨著科技的發展，人工智能和機器學習將成為未來的熱點領域。我對這些技術非常感興趣，希望在學業和職業生涯中深入研究，並將這些知識應用於解決實際問題。',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  const TextSpan(text: '\n\n'),
                  const TextSpan(text: '3. 技術領導與管理：\n'),
                  TextSpan(
                    text:
                    '雖然我對技術充滿熱情，但我也希望能夠在未來的職業中發揮領導作用。無論是在團隊管理還是項目推進方面，我都希望能夠學會如何引導團隊達成共同目標，並且成為一位有遠見的技術領袖。',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  const TextSpan(text: '\n\n'),
                  const TextSpan(text: '4. 創業：\n'),
                  TextSpan(
                    text:
                    '除了穩定的職業發展外，我也希望能有一天創立自己的公司，將我對技術的熱愛轉化為商業價值，並為社會創造更多的貢獻。',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  const TextSpan(text: '\n\n'),
                  const TextSpan(
                    text:
                    '對我來說，專業方向不僅是職業的選擇，更是我實現理想、貢獻社會的一條道路。我會不斷努力，提升自己的能力，朝著這些目標邁進。',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),
                  ),
                ],
              ),
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 16, height: 1.7, color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }
}

