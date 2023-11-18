import 'package:flutter/material.dart';

class MassengerScreen extends StatelessWidget {
  const MassengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /* Search Bar */
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

            /* Stories Bar each Container duplicated */
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  /* Container has stack with image & status */
                  Container(
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
                                padding: EdgeInsetsDirectional.only(
                                    bottom: 3.0, end: 3.0)
                            ),
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
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    // width added to give max width to Profile name
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: const [
                            // profile image circle
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  'https://media.istockphoto.com/id/1365997114/photo/outdoor-portrait-of-young-african-american-backpacker.jpg?b=1&s=170667a&w=0&k=20&c=NuKhF81RGpfD-Nlr_m-QDpleNe7BhKu-mY7tniNAT3w='),
                            ),
                            Padding(
                                padding: EdgeInsetsDirectional.only(
                                    bottom: 3.0, end: 3.0)),
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
                          height: 5.0,
                        ),
                        const Text(
                          'Alex Hill',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          //if name is long added ...
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    // width added to give max width to Profile name
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: const [
                            // profile image circle
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  'https://plus.unsplash.com/premium_photo-1671581559476-10b8a92ffb77?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
                            ),
                            Padding(
                                padding: EdgeInsetsDirectional.only(
                                    bottom: 3.0, end: 3.0)),
                            // white and red status Circle
                            CircleAvatar(
                              radius: 8.5,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Text(
                          'Rebeca Donelli',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          //if name is long added ...
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: const [
                            // profile image circle
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  'https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?b=1&s=170667a&w=0&k=20&c=MRMqc79PuLmQfxJ99fTfGqHL07EDHqHLWg0Tb4rPXQc='),
                            ),
                            Padding(
                                padding: EdgeInsetsDirectional.only(
                                    bottom: 3.0, end: 3.0)),
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
                          height: 5.0,
                        ),
                        const Text(
                          'Alexander',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          //if name is long added ...
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    // width added to give max width to Profile name
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: const [
                            // profile image circle
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60'),
                            ),
                            Padding(
                                padding: EdgeInsetsDirectional.only(
                                    bottom: 3.0, end: 3.0)),
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
                          height: 5.0,
                        ),
                        const Text(
                          'Robbie Jeselnik',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          //if name is long added ...
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    // width added to give max width to Profile name
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: const [
                            // profile image circle
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  'https://media.istockphoto.com/id/1375264815/photo/beautiful-afro-woman.jpg?b=1&s=170667a&w=0&k=20&c=V052sAKDF76elxBGk2ozB0hxafANXLjVmBNKFfPTdTY='),
                            ),
                            Padding(
                                padding: EdgeInsetsDirectional.only(
                                    bottom: 3.0, end: 3.0)),
                            // white and red status Circle
                            CircleAvatar(
                              radius: 8.5,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Text(
                          'Madeline Reenie',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          //if name is long added ...
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),

            /* Row Represents each Conversation */
            /* Expanded (to get the rest of the column) >>
             SingleChildScrollView >> Column >> multiple Rows */
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
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
                                padding: EdgeInsetsDirectional.only(
                                    bottom: 3.0, end: 3.0)),
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
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
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        // stack has image with status
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: const [
                            // profile image circle
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  'https://media.istockphoto.com/id/1365997114/photo/outdoor-portrait-of-young-african-american-backpacker.jpg?b=1&s=170667a&w=0&k=20&c=NuKhF81RGpfD-Nlr_m-QDpleNe7BhKu-mY7tniNAT3w='),
                            ),
                            Padding(
                                padding: EdgeInsetsDirectional.only(
                                    bottom: 3.0, end: 3.0)),
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
                                'Alex Hill',
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
                                        'hi , am a interested working with you!',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
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
                                    '2:13 am',
                                    textAlign: TextAlign.end,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        // stack has image with status
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: const [
                            // profile image circle
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  'https://plus.unsplash.com/premium_photo-1671581559476-10b8a92ffb77?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
                            ),
                            Padding(
                                padding: EdgeInsetsDirectional.only(
                                    bottom: 3.0, end: 3.0)),
                            // white and red status Circle
                            CircleAvatar(
                              radius: 8.5,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
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
                                'Rebeca Donelli',
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
                                        'pls take a look at the images i sent',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
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
                                    '4:08 pm',
                                    textAlign: TextAlign.end,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        // stack has image with status
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: const [
                            // profile image circle
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  'https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?b=1&s=170667a&w=0&k=20&c=MRMqc79PuLmQfxJ99fTfGqHL07EDHqHLWg0Tb4rPXQc='),
                            ),
                            Padding(
                                padding: EdgeInsetsDirectional.only(
                                    bottom: 3.0, end: 3.0)),
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
                                'Alexander',
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
                                        'Hello guys, we have discussed about',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
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
                                    '6:24 pm',
                                    textAlign: TextAlign.end,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        // stack has image with status
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: const [
                            // profile image circle
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60'),
                            ),
                            Padding(
                                padding: EdgeInsetsDirectional.only(
                                    bottom: 3.0, end: 3.0)),
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
                                'Robbie Jeselnik',
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
                                        'Will see you in the evnening after my class',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
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
                                    '3:17 pm',
                                    textAlign: TextAlign.end,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        // stack has image with status
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: const [
                            // profile image circle
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  'https://media.istockphoto.com/id/1375264815/photo/beautiful-afro-woman.jpg?b=1&s=170667a&w=0&k=20&c=V052sAKDF76elxBGk2ozB0hxafANXLjVmBNKFfPTdTY='),
                            ),
                            Padding(
                                padding: EdgeInsetsDirectional.only(
                                    bottom: 3.0, end: 3.0)),
                            // white and red status Circle
                            CircleAvatar(
                              radius: 8.5,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
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
                                'Madeline Reenie',
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
                                        'I cannot keep doing this for you',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
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
                                    '1:17 am',
                                    textAlign: TextAlign.end,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        // stack has image with status
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: const [
                            // profile image circle
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60'),
                            ),
                            Padding(
                                padding: EdgeInsetsDirectional.only(
                                    bottom: 3.0, end: 3.0)),
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
                                'Lexy Daffodil',
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
                                        'We both had a great time',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
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
                                    '9:28 am',
                                    textAlign: TextAlign.end,
                                  ),
                                ],
                              ),
                            ],
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

void onCamera() {
  print('Camera Clicked');
}
void onPin() {
  print('Pin Clicked');
}
