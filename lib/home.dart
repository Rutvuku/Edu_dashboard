import 'package:flutter/material.dart';
import 'package:task1/screen2.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, dynamic>> cards = [
    {
      'image': 'asset/image/task1.jpg', // Replace with your image path
      'title': 'Lifestyle',
      'subtitle': 'A complete guide for your new born baby',
      'date' : '16 lessons'

    },
    {
      'image': 'asset/image/task1.jpg', // Replace with your image path
      'title': 'Lifestyle',
      'subtitle': 'A complete guide for your new born baby',
      'date' : '16 lessons'
    },
    {
      'image': 'asset/image/task1.jpg', // Replace with your image path
      'title': 'Lifestyle',
      'subtitle': 'A complete guide for your new born baby',
      'date' : '16 lessons'
    },
    // Add more cards as needed
  ];
  final List<Map<String, dynamic>> cards2 = [
    {
      'image': 'asset/image/task1.jpg', // Replace with your image path
      'title': 'Babycare',
      'subtitle': 'Understanding of human behaviour',
      'date' : '13 feb sunday'
    },
    {
      'image': 'asset/image/task1.jpg', // Replace with your image path
      'title': 'Babycare',
      'subtitle': 'Understanding of human behaviour',
      'date' : '13 feb sunday'
    },
    {
      'image': 'asset/image/task1.jpg', // Replace with your image path
      'title': 'Babycare',
      'subtitle': 'Understanding of human behaviour',
      'date' : '13 feb sunday'
    },
    // Add more cards as needed
  ];
  final List<Map<String, dynamic>> cards3 = [
    {
      'image': 'asset/image/task1.jpg', // Replace with your image path
      'title': 'Babycare',
      'subtitle': 'Understanding of human behaviour',
      'date' : '3 min'
    },
    {
      'image': 'asset/image/task1.jpg', // Replace with your image path
      'title': 'Babycare',
      'subtitle': 'Understanding of human behaviour',
      'date' : '3 min'
    },
    {
      'image': 'asset/image/task1.jpg', // Replace with your image path
      'title': 'Babycare',
      'subtitle': 'Understanding of human behaviour',
      'date' : '3 min'
    },
    // Add more cards as needed
  ];
  int _currentIndex=0;
  final List<Widget> _screens = [
    Screen2(),

  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                  child: Text('Hello Kenobi!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                  child: Text('What do you want to learn today?',style: TextStyle(fontSize: 15),)),
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: ButtonWithDecoration(
                          onPressed: () {
                            // Implement button 1 functionality here
                          },
                          icon: Icons.book_outlined,
                          label: 'Programs',
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: ButtonWithDecoration(
                          onPressed: () {
                            // Implement button 2 functionality here
                          },
                          icon: Icons.help,
                          label: 'Help',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: ButtonWithDecoration(
                          onPressed: () {
                            // Implement button 1 functionality here
                          },
                          icon: Icons.note_add_rounded,
                          label: 'Learn',
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: ButtonWithDecoration(
                          onPressed: () {
                            // Implement button 2 functionality here
                          },
                          icon: Icons.track_changes,
                          label: 'DD tracker',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Center(
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Programs for you',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16.0),
                    Container(
                      height: 250, // Set the height as needed
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: cards.length,
                        itemBuilder: (context, index) {
                          return CardItem(
                            image: cards[index]['image'],
                            title: cards[index]['title'],
                            subtitle: cards[index]['subtitle'],
                            date: cards[index]['date'],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Events and experiences',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16.0),
                    Container(
                      height: 250, // Set the height as needed
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: cards2.length,
                        itemBuilder: (context, index) {
                          return CardItem(
                            image: cards2[index]['image'],
                            title: cards2[index]['title'],
                            subtitle: cards2[index]['subtitle'],
                            date: cards2[index]['date'],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lessons for you',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16.0),
                    Container(
                      height: 250, // Set the height as needed
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: cards3.length,
                        itemBuilder: (context, index) {
                          return CardItem(
                            image: cards3[index]['image'],
                            title: cards3[index]['title'],
                            subtitle: cards3[index]['subtitle'],
                            date: cards3[index]['date'],


                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hub),
            label: 'Hub',
          ),
          BottomNavigationBarItem(

            icon: Icon(Icons.chat_bubble_outline_outlined),
            label: 'Hub',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Hub',
          ),


        ],
        currentIndex: _currentIndex,
        onTap: (index){
         // Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));
          _onTabTapped(index);
        },
      ),
    );
  }
}
class CardItem extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String date;


  CardItem({required this.image, required this.title, required this.subtitle,required this.date,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160, // Set the card width as needed
      margin: EdgeInsets.symmetric(horizontal: 8.0),
   
      child: ClipRRect(
        borderRadius: BorderRadius.circular(23),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold,color: Colors.blue),
                    ),
                    SizedBox(height: 4.0),
                    Text(subtitle),

                  ],
                ),
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(date,style: TextStyle(fontSize: 10),),
                  TextButton(
                    onPressed: () {
                      // Implement "Show All" button functionality here
                    },
                    child: Icon(Icons.open_in_new,size: 20,),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          // Implement the functionality for the leftmost icon here
        },
        color: Colors.black,
      ),
      title: Text(''),
      actions: [
        IconButton(
          icon: Icon(Icons.message),
          onPressed: () {
            // Implement the functionality for the first icon on the right here
          },
          color: Colors.black,
        ),
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {
            // Implement the functionality for the second icon on the right here
          },
          color: Colors.black,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
class ButtonWithDecoration extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String label;

  ButtonWithDecoration({
    required this.onPressed,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.blue),
      ),
      child: TextButton.icon(
        onPressed: onPressed,
        icon: Icon(icon),
        label: Text(label),
      ),
    );
  }
}
