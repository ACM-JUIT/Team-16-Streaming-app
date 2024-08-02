import 'package:flutter/material.dart';
import 'package:basecode/pages/home.dart'; // Ensure this path is correct

void main() {
  runApp(const AccountHolderApp());
}

class AccountHolderApp extends StatelessWidget {
  const AccountHolderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: const AccountHolderPage(),
    );
  }
}

class AccountHolderPage extends StatelessWidget {
  const AccountHolderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF322C2b),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Escape',
            style: TextStyle(
              color: Color(0xFF999187),
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
        ),
        backgroundColor: const Color(0xFF322C2b),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Who's Watching?",
            style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
              padding: const EdgeInsets.all(16.0),
              children: [
                ProfileCard(
                  name: 'Person 1',
                  color: Colors.blue,
                  imageUrl: 'https://c4.wallpaperflare.com/wallpaper/859/301/85/angry-birds-red-hd-wallpaper-preview.jpg',
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
                  },
                ),
                ProfileCard(
                  name: 'Person 2',
                  color: Colors.pink,
                  imageUrl: 'https://i.pinimg.com/564x/ec/1c/da/ec1cdae383d993ed7f14625e26bffb70.jpg',
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
                  },
                ),
                ProfileCard(
                  name: 'Person 3',
                  color: Colors.red,
                  imageUrl: 'https://i.pinimg.com/564x/a2/5c/59/a25c59adf74778fa5032ef375a6266ab.jpg',
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
                  },
                ),
                ProfileCard(
                  name: 'Kids',
                  color: Colors.yellow,
                  imageUrl: 'https://i.pinimg.com/564x/08/db/dd/08dbddf0dd7144ed0f1a7b5c6261e49b.jpg',
                  isKids: true,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
                  },
                ),
                const AddProfileCard(),
              ],
            ),
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String name;
  final Color? color;
  final String? imageUrl;
  final bool isKids;
  final VoidCallback? onTap;

  const ProfileCard({
    super.key,
    required this.name,
    this.color,
    this.imageUrl,
    this.isKids = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Hero(
            tag: name,
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: color ?? const Color.fromARGB(0, 160, 67, 67),
                borderRadius: BorderRadius.circular(12),
                image: imageUrl != null
                    ? DecorationImage(
                        image: NetworkImage(imageUrl!),
                        fit: BoxFit.cover,
                      )
                    : null,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: isKids
                  ? Container()
                  : imageUrl == null
                      ? const Center(
                          child: Icon(
                            Icons.person_outline,
                            color: Colors.black,
                            size: 100,
                          ),
                        )
                      : Container(),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ],
      ),
    );
  }
}

class AddProfileCard extends StatelessWidget {
  const AddProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add profile action
      },
      child: Column(
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: const Center(
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 50,
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Add Profile',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
