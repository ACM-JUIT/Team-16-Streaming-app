import 'package:flutter/material.dart';
import 'package:basecode/profile.dart';  // Import the profile page

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  void navigateToProfile() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ProfilePage()),
    );
  }

  void onBottomNavBarTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    if (index == 3) {  // Assuming the 'Profile' tab is at index 3
      navigateToProfile();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF322C2B),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: [
          // Top bar
          Row(
            children: [
              GestureDetector(
                onTap: navigateToProfile,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: const Icon(
                    Icons.menu_rounded,
                    size: 30,
                    color: Color(0xFFFFF2E1),
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: navigateToProfile,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/jk.jpeg'),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              )
            ],
          ),

          // Hero Banner
          buildHeroBanner(),

          // Main banner with multiple containers
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildBannerContainer('assets/Na.jpg'),
                  buildBannerContainer('assets/in.jpg'),
                  buildBannerContainer('assets/ja.jpg'),
                  buildBannerContainer('assets/oc.jpg'),
                  buildBannerContainer('assets/op.jpg'),
                ],
              ),
            ),
          ),

          // Categories
          buildCategory("Trending Now", Icons.trending_up),
          buildCategory("New Releases", Icons.new_releases),
          buildCategory("Top Picks for You", Icons.thumb_up),
          buildCategory("Action Movies", Icons.sports_martial_arts),
          buildCategory("Family Movies", Icons.family_restroom),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF322C2B),
        currentIndex: _currentIndex,
        onTap: onBottomNavBarTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: 'Home',
            backgroundColor: Color(0xFF322C2B),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.white),
            label: 'Search',
            backgroundColor: Color(0xFF322C2B),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download, color: Colors.white),
            label: 'Downloads',
            backgroundColor: Color(0xFF322C2B),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white),
            label: 'Profile',
            backgroundColor: Color(0xFF322C2B),
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),
    );
  }

  Widget buildHeroBanner() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 250,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bl.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 20,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Featured Movie',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'Play',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBannerContainer(String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 300,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 10,
              left: 10,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                      child: const Text(
                        'Play',
                        style: TextStyle(fontSize: 20),
                      ),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(3, 9, 5, 6),
                      child: const Icon(
                        Icons.play_arrow_rounded,
                      ),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(
                    Icons.more_horiz_rounded,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCategory(String title, IconData icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              Icon(icon, color: Colors.white),
              const SizedBox(width: 8),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              buildContainer('assets/Tangled.jpeg', 'Tangled', '1h 40m', 4.5),
              buildContainer('assets/dory.jpeg', 'Finding Dory', '1h 37m', 4.3),
              buildContainer('assets/tom.jpeg', 'Oblivion', '1h 41m', 3.9),
              buildContainer('assets/F1.jpg', 'F1', '1h 52m', 4.7),
              buildContainer('assets/ga2.jpeg', 'Gladiator 2', '2h 16m', 4.6),
              buildContainer('assets/Na.jpg', 'Napoleon', '24m', 4.8),
              buildContainer('assets/zodica.jpg', 'Zodiac', '2h 37m', 4.4),
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget buildContainer(String imagePath, String title, String duration, double rating) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 150,
        height: 220,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black.withOpacity(0.8), Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.amber, size: 16),
                        const SizedBox(width: 4),
                        Text(
                          '$rating',
                          style: const TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        const Spacer(),
                        Text(
                          duration,
                          style: const TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                            child: const Text(
                              'Play',
                              style: TextStyle(fontSize: 16),
                            ),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                topLeft: Radius.circular(10),
                              ),
                              color: Colors.white,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(5, 4.5, 5, 4.5),
                            child: const Icon(
                              Icons.play_arrow_rounded,
                            ),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Icon(Icons.add),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
