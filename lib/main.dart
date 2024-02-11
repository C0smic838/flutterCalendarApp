import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
        title: const Text(
          "Menu"
        )
      ),
      body: Center(
        child: Container(
          color: const Color.fromARGB(255, 222, 244, 255),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Container(
              width: double.infinity,
              height: double.infinity,

              // child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                // children: [
              child: Stack(
                children: 
                    [
                      Expanded(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height-80,
                        child: ParallaxRecipe()
                        )
                      ),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: ElevatedButton(
                          
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            minimumSize: const Size(70, 60),
                          ),
                          onPressed: (){
                            return;
                          }, 
                          child: const Text("+")),
                        ),      
              ]),
                  // ElevatedButton(
                  //   style: ElevatedButton.styleFrom(
                  //     backgroundColor: Colors.blue,
                  //     foregroundColor: Colors.white,
                  //     minimumSize: const Size(70, 60),
                  //   ),
                  //   onPressed: (){
                  //     return
                  //   }, 
                  //   child: const Text("+")),
              //   ]
              // )
            ),
          ),
        )
      ),
      bottomNavigationBar: Container(
        height: 100,
        width: double.infinity,
        child: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 222, 244, 255),
          items: const [
            BottomNavigationBarItem(
              label: "Calender",
              icon: Icon(
                color: Colors.blue,
                Icons.calendar_today
              )),
            BottomNavigationBarItem(
            label: "Todo",
            icon: Icon(
              color: Colors.blue,
              Icons.list
            )),
            BottomNavigationBarItem(
              label: "Groups",
              icon: Icon(
                color: Colors.blue,
                Icons.group
              ))
          ]),
      ),
    );
  }
}

class ParallaxRecipe extends StatefulWidget {
  ParallaxRecipe({Key ? key}) : super(key: key);

  @override
  State<ParallaxRecipe> createState() => _ParallaxRecipeState();
}

class _ParallaxRecipeState extends State<ParallaxRecipe> {
  final timeofDay = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

  final amorpm = ['am', 'am', 'am', 'am', 'am', 'am', 'am', 'am', 'am', 'am', 'am', 'am', "pm", "pm", "pm", "pm", "pm", "pm", "pm", "pm", "pm", "pm", "pm", "pm"];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container()
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(
          horizontal: 0,
          vertical: 0,
        ),
        sliver: SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return LocationListItem(
                  time: timeofDay[index],
                  amorpm: amorpm[index],
                  );
            },
          childCount: timeofDay.length
          ),
          
          )
        )
      ],
    );
    // return ListView.builder(
    //   physics: const AlwaysScrollableScrollPhysics(),
    //   itemCount: timeofDay.length,
    //   itemBuilder: (BuildContext context, int index) {
    //     // for (final time in timeofDay) {
    //       return Container(
    //         height: 60,
    //         child: SizedBox(
    //           child: LocationListItem(
    //             time: timeofDay[index],
    //             amorpm: amorpm[index],
    //             ),
    //         ),
    //       );
    //   }
    //   );
  
  }
}

class LocationListItem extends StatelessWidget {
  const LocationListItem({
    Key ? key,
    required this.time,
    required this.amorpm,
    }) : super(key: key);

    final int time;
    final String amorpm;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      child: Row(
            children: [
              Text('$time $amorpm'),
              const Divider(
                color: Colors.black,
              )
            ])
    );
  }
}
