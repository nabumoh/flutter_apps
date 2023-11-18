import 'package:flutter/material.dart';

class MassengerScreen extends StatelessWidget {
  const MassengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      /* AppBar */
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        /*removes the split line between appBar and Body.*/
        titleSpacing: 20.0,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/104215197?s=400&u=e64a3db0cc027ba80925ea51075fa95eba0a7d3b&v=4'),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black),
            ),
          ],
        ),
        actions: const [
          IconButton(
            onPressed: onCamera,
            icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                  size: 16.0,
                )),
          ),
          IconButton(
            onPressed: onPin,
            icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 16.0,
                )),
          ),
        ],
      ),
      /* Body */
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* Search Bar Section */
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    12.0,
                  ),
                  color: Colors.grey[300],
                ),
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: const [
                    Icon(Icons.search),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Search'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              /* Story Section */
              Container(
                height: 100.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryItem(),
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    width: 20,
                  ),
                  itemCount: 10,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              /* Chats Section */
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildChatItem(),
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                  height: 20,
                ),
                itemCount: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }

/*
  // 1. build Item
  // 2. build list
  // 3. add item to list
*/
  Widget buildChatItem() => Row(
        children: [
          // stack has image with status
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: const [
              // profile image circle
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/104215197?s=400&u=e64a3db0cc027ba80925ea51075fa95eba0a7d3b&v=4'),
              ),
              Padding(
                  padding: EdgeInsetsDirectional.only(bottom: 3.0, end: 3.0)),
              // white and red status Circle
              CircleAvatar(
                radius: 8.5,
                backgroundColor: Colors.white,
              ),
              CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.red,
              ),
            ],
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Nadeem Abumoh',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    const Expanded(
                        child: Text(
                      'how are you ?!',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      // blue circle in chat
                      child: Container(
                        width: 7.0,
                        height: 7.0,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Text(
                      '8:43 pm',
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );

  Widget buildStoryItem() => Container(
        /* width added to give max width to Profile name */
        width: 60.0,
        child: Column(
          children: [
            /* Profile image stack */
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: const [
                // profile image circle
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/104215197?s=400&u=e64a3db0cc027ba80925ea51075fa95eba0a7d3b&v=4'),
                ),
                /* white and red status Circle */
                Padding(
                    padding: EdgeInsetsDirectional.only(bottom: 3.0, end: 3.0)),
                CircleAvatar(
                  radius: 8.5,
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.red,
                ),
              ],
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'Nadeem Abumoh',
              maxLines: 2,
              /*if name is long added ...*/
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13.0,
                color: Colors.black,
              ),
            ),
          ],
        ),
      );
}

void onCamera() {
  print('Camera Clicked');
}

void onPin() {
  print('Pin Clicked');
}
