import 'package:flutter/material.dart';
import 'package:instagram1/widget/profile_appbar.dart';
import 'package:instagram1/widget/Info_Profile.dart';
import 'package:instagram1/widget/avatar_info.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        actions: const [CustomAppbar()],
      ),
      body: ListView(children: [
        Column(
          children: [
            Row(
              children: [AvatarInfo()],
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "AnugrahMukti",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 7),
                    Text(
                        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.")
                  ]),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey[300],
                    fixedSize:
                        Size(MediaQuery.of(context).size.width * 0.9, 20)),
                onPressed: () {},
                child: Text("Edit Profile",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)))
          ],
        ),
        SizedBox(
          height: 10,
        ),
        GridView.builder(
          padding: EdgeInsets.all(5),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 12,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 8,
            mainAxisSpacing: 7,
            crossAxisCount: 3,
          ),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.black26,
            );
          },
        )
      ]),
    );
  }
}
