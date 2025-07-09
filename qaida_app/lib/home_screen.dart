import 'package:flutter/material.dart';
import 'package:qaida_app/content_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Map<int,List<int>> chapters = {
      1: [1,2],2: [2],3: [2],4: [2],5: [2],6: [2],7: [3,4,5],8: [5,6,7,8],9: [5,6,],10: [7],11: [8],12: [9,10,11],13: [9],14: [10],15: [11],16: [12,13],17: [14,15,16],18: [15],19: [16],20: [16],21: [16],22: [17,18,19],23: [17],24: [18],25: [19],26: [20,21,22],27: [21],28: [22],29: [23,24],30: [23],31: [24],32: [25,26,27],33: [27],34: [28],35: [29],36: [30,31,32],37: [32,33],38: [33,34],39: [35],40: [36],41: [36,37,38],42: [39,40,41,42],43: [43,44],
    };
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image.asset("content_title.png", height: 50),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        controller: ScrollController(
          keepScrollOffset: true,

        ),
        

        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: List.generate(43, (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: GestureDetector(
                  
                  onTap: () {
                    // Handle button tap here
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ContentScreen(content_list: chapters[index +1]!)));
                    print("Button ${index + 1} tapped");
                  },
                  child: Image.asset(
                    "assets/buttonImages/${index + 1}.png",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
