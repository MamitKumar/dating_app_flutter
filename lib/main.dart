import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                "YOU",
                style: TextStyle(
                  fontSize: 26,
                  fontFamily: 'SyneMono',
                ),
              ),
              Image(
                image: AssetImage('Images/macaroni-love.png'),
                height: 50,
                fit: BoxFit.cover,
              ),
              Text(
                "Me",
                style: TextStyle(
                  fontSize: 26,
                  fontFamily: 'SyneMono',
                ),
              ),
            ],
          ),
        ),
        body: LoveMe(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.batch_prediction),
              label: "Love",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: "Profile",
            ),
          ],
        ),
      ),
    ),
  );
}

class LoveMe extends StatelessWidget {
  const LoveMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
              image: AssetImage('Images/homeimage.jpeg'),
              fit: BoxFit.fitHeight,
            ),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            height: 220,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white12,
                      Colors.white60,
                      Colors.white12
                    ]),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Alia Sharma",
                      style:
                          TextStyle(fontSize: 34, fontFamily: 'SyneMono'),
                    ),
                    Text(
                      "  20Year",
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Text(
                  "🟢 Online",
                  style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Wrap(
                  spacing: 3,
                  children: const [
                    Chip(
                      label: Text("Software DEveloper"),
                      backgroundColor: Colors.red,
                    ),
                    Chip(
                      label: Text("I Hate Fake Love"),
                      backgroundColor: Colors.purpleAccent,
                    ),
                    Chip(
                      label: Text("DART"),
                      backgroundColor: Colors.orange,
                    ),
                    Chip(
                      label: Text("Mingal With Android Stdio"),
                      backgroundColor: Colors.blue,
                    ),
                    Chip(
                      label: Text("Love"),
                      backgroundColor: Colors.green,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Center(child: Text("You Date With Me",style: TextStyle(fontSize: 17,color: Colors.white),)),
                  width: 180,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.red
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
