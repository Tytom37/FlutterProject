import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.black,
                  Colors.black87,
                ],
              ),
            ),
          ),
          centerTitle: true,
          title: const Text(
            'Explore',
            style: TextStyle(color: Colors.white),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.bars, color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const FaIcon(FontAwesomeIcons.heart, color: Colors.white),
            )
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1.0),
            child: Container(
              color: Colors.black,
              height: 1.0,
            ),
          ),
          elevation: 6.0,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://i.gifer.com/8YDk.gif'),
            fit: BoxFit.cover,
          ),
          // gradient: LinearGradient(
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          //   colors: [
          //     Colors.blue,
          //     Colors.blueGrey,
          //   ],
          // ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.white,
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(FontAwesomeIcons.magnifyingGlass, color: Colors.black,),
                                ),
                                const SizedBox(width: 10.0),
                                const Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Search',
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        IconButton(
                          onPressed: () {},
                          icon: const CircleAvatar(
                            backgroundColor: Colors.white,
                            child: FaIcon(FontAwesomeIcons.circleInfo, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'Monday',
                                  style: TextStyle(color: Colors.white, fontSize: 15),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'March 11, 2024',
                                  style: TextStyle(color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 8.0),
                                child: Text(
                                  'Tubigon',
                                  style: TextStyle(color: Colors.white, fontSize: 15),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 8.0),
                                child: Row(
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.locationDot,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '-0.13, 51.51',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.cloud,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            '31°C°F',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 100.0),
                          child: Text(
                            'Precipitation: 0%',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 100.0),
                          child: Text(
                            'Humidity: 67%',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 100.0),
                          child: Text(
                            'Wind: 13 km/h',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Text(
                            'Weather',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Text(
                            'Monday',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Text(
                            'Cloudy',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(15.0),
                    onTap: () {
                      // Add onTap action here
                    },
                    child: const Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                          ),
                          child: Image(
                            image: NetworkImage(
                                'https://media.istockphoto.com/id/1294454411/photo/london-symbols-with-big-ben-double-decker-buses-and-red-phone-booth-in-england-uk.webp?b=1&s=170667a&w=0&k=20&c=SR5FBt8VvpZEOIxZcTmoEf9XxU0oiSnbobD3E6ZB358='),
                          ),
                        ),
                        SizedBox(height: 8),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 1),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(left: 10.0),
                                          child: Icon(
                                            FontAwesomeIcons.globe,
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 280),
                                        child: Text(
                                          'London',
                                          style: TextStyle(color: Colors.black, fontSize: 20),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 240),
                              child: Text(
                                '',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Thu',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                      Text(
                                        '19°',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(right: 50.0),
                                          child: Icon(
                                            FontAwesomeIcons.cloudSun,
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Fri',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                      Text(
                                        '19°',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(right: 50.0),
                                          child: Icon(
                                            FontAwesomeIcons.cloudSun,
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Sat',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                      Text(
                                        '19°',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(right: 50.0),
                                          child: Icon(
                                            FontAwesomeIcons.cloudSun,
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 240),
                              child: Text(
                                '',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(15.0),
                    onTap: () {
                      // Add onTap action here
                    },
                    child: const Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                          ),
                          child: Image(
                            image: NetworkImage(
                                'https://i.pinimg.com/originals/67/df/1e/67df1e420915411271296ff86c9e33fa.jpg'),
                          ),
                        ),
                        SizedBox(height: 8),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 1),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(left: 10.0),
                                          child: Icon(
                                            FontAwesomeIcons.globe,
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 280),
                                        child: Text(
                                          'Canada',
                                          style: TextStyle(color: Colors.black, fontSize: 20),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 240),
                              child: Text(
                                '',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Thu',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                      Text(
                                        '19°',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(right: 50.0),
                                          child: Icon(
                                            FontAwesomeIcons.cloudSun,
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Fri',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                      Text(
                                        '19°',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(right: 50.0),
                                          child: Icon(
                                            FontAwesomeIcons.cloudSun,
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Sat',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                      Text(
                                        '19°',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(right: 50.0),
                                          child: Icon(
                                            FontAwesomeIcons.cloudSun,
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 240),
                              child: Text(
                                '',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(15.0),
                    onTap: () {
                      // Add onTap action here
                    },
                    child: const Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                          ),
                          child: Image(
                            image: NetworkImage(
                                'https://wallpapers.com/images/featured/tokyo-dxva6ho3h8x6m3xb.jpg'),
                          ),
                        ),
                        SizedBox(height: 8),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 1),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(left: 10.0),
                                          child: Icon(
                                            FontAwesomeIcons.globe,
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 299),
                                        child: Text(
                                          'Tokyo',
                                          style: TextStyle(color: Colors.black, fontSize: 20),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 240),
                              child: Text(
                                '',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Thu',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                      Text(
                                        '19°',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(right: 50.0),
                                          child: Icon(
                                            FontAwesomeIcons.cloudSun,
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Fri',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                      Text(
                                        '19°',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(right: 50.0),
                                          child: Icon(
                                            FontAwesomeIcons.cloudSun,
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Sat',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                      Text(
                                        '19°',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(right: 50.0),
                                          child: Icon(
                                            FontAwesomeIcons.cloudSun,
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 240),
                              child: Text(
                                '',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(15.0),
                    onTap: () {
                      // Add onTap action here
                    },
                    child: const Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                          ),
                          child: Image(
                            image: NetworkImage(
                                'https://www.nationsonline.org/gallery/Korea_South/Seoul-Seongsan-Bridge-and-the-Han-River.jpg'),
                          ),
                        ),
                        SizedBox(height: 8),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 1),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(left: 10.0),
                                          child: Icon(
                                            FontAwesomeIcons.globe,
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 240),
                                        child: Text(
                                          'South Korea',
                                          style: TextStyle(color: Colors.black, fontSize: 20),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 240),
                              child: Text(
                                '',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Thu',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                      Text(
                                        '19°',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(right: 50.0),
                                          child: Icon(
                                            FontAwesomeIcons.cloudSun,
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Fri',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                      Text(
                                        '19°',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(right: 50.0),
                                          child: Icon(
                                            FontAwesomeIcons.cloudSun,
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Sat',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                      Text(
                                        '19°',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(right: 50.0),
                                          child: Icon(
                                            FontAwesomeIcons.cloudSun,
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 240),
                              child: Text(
                                '',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(15.0),
                    onTap: () {
                      // Add onTap action here
                    },
                    child: const Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                          ),
                          child: Image(
                            image: NetworkImage(
                                'https://cdn.britannica.com/85/102285-050-1DD7700A/Stockholm.jpg'),
                          ),
                        ),
                        SizedBox(height: 8),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 1),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(left: 10.0),
                                          child: Icon(
                                            FontAwesomeIcons.globe,
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 280),
                                        child: Text(
                                          'Sweden',
                                          style: TextStyle(color: Colors.black, fontSize: 20),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 240),
                              child: Text(
                                '',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Thu',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                      Text(
                                        '19°',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(right: 50.0),
                                          child: Icon(
                                            FontAwesomeIcons.cloudSun,
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Fri',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                      Text(
                                        '19°',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(right: 50.0),
                                          child: Icon(
                                            FontAwesomeIcons.cloudSun,
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Sat',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                      Text(
                                        '19°',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(right: 50.0),
                                          child: Icon(
                                            FontAwesomeIcons.cloudSun,
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 240),
                              child: Text(
                                '',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 240),
                child: Text(
                  '',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}