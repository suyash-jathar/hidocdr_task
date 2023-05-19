import 'package:flutter_application_1/api/fetching_data.dart';
import 'package:flutter_application_1/responsive/responsive.dart';
import 'package:flutter_application_1/utils/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

import '../models/news.dart';
import '../models/trandingBulletin.dart';
class HiDocDrApp extends StatefulWidget {
  @override
  State<HiDocDrApp> createState() => _HiDocDrAppState();
}

class _HiDocDrAppState extends State<HiDocDrApp> {
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    _scrollController;
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          // SliverAppBar(
          //   iconTheme: IconThemeData(
          //     color: Colors.black,
          //   ),
          //   backgroundColor: Colors.red,
          //   pinned: true,
          //   expandedHeight: 200,
          //   flexibleSpace: FlexibleSpaceBar(
          //     title: Text(
          //       'Portfolio',
          //       style: TextStyle(color: Colors.black),
          //     ),
          //     background: Image.network(
          //       'https://himdeve.eu/wp-content/uploads/2015/05/himdeve_labrador_with_cute_woman_model.jpg',
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          SliverFillRemaining(
            child: ResponsiveLayout(
              // Mobile Body
              mobileBody: Stack(
                children: [
                  Container(
                    height: height * 1,
                    // width: ,
                    // color: Colors.amber,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/background_stack.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 2,
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.18,
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 30,
                                width: 110,
                                margin: const EdgeInsets.only(
                                  top: 50,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.lightBlue[100],
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  ),
                                ),
                                child: const Center(
                                    child: Text(
                                  'hidoc',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 50,
                                    width: 80,
                                    child: Image.asset(
                                      'assets/home_icon1.png',
                                      fit: BoxFit.fitHeight,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 72,
                                  ),
                                  const Text(
                                    'ARTICLES',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            controller: _scrollController,
                            child: Column(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  margin: const EdgeInsets.symmetric(horizontal: 30),
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(horizontal: 30),
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    height: 50,
                                    child: Center(
                                        child: Row(
                                      children: const [
                                        SizedBox(
                                          width: 90,
                                        ),
                                        Text(
                                          'Critcal Area',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 80,
                                        ),
                                        Icon(
                                          Icons.arrow_drop_down,
                                          color: Colors.grey,
                                          size: 26,
                                        ),
                                      ],
                                    )),
                                  ),
                                ),
                                Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 15),
                                  child: Container(
                                    // margin: EdgeInsets.symmetric(horizontal: 30),
                                    decoration: const BoxDecoration(
                                        // color: Colors.amber,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    height: 320,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          flex: 6,
                                          child: Container(
                                              color: const Color.fromARGB(
                                                  255, 224, 224, 224),
                                              child: const Center(
                                                child: Icon(
                                                    FontAwesomeIcons.newspaper,
                                                    color: Colors.grey,
                                                    size: 100),
                                              )),
                                        ),
                                        Expanded(
                                          flex: 5,
                                          child: Column(
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.all(
                                                    15.0),
                                                child: Text(
                                                  'Decoding the Nexus Criteria for Critical Care : A Compherensive Guide',
                                                  style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(
                                                        horizontal: 15)
                                                    .copyWith(bottom: 5),
                                                child: const Text(
                                                  'The Nexus Criteria has been used for healthcare Professionals to determine wether the patients needs critical care or not.',
                                                  style: TextStyle(
                                                      fontSize: 11.2),
                                                ),
                                              ),
                                              Expanded(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    const Padding(
                                                      padding:
                                                          EdgeInsets
                                                              .only(left: 15),
                                                      child: Text(
                                                        'Read full article to earn points',
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            color:
                                                                Colors.blue,
                                                            decoration:
                                                                TextDecoration
                                                                    .underline,
                                                            fontStyle:
                                                                FontStyle
                                                                    .italic),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 58,
                                                      width: 80,
                                                      decoration: const BoxDecoration(
                                                          color: Colors
                                                              .lightBlue,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                                  bottomRight:
                                                                      Radius.circular(
                                                                          10))),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: const [
                                                          Text(
                                                            'Points',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                          ),
                                                          SizedBox(
                                                            height: 2,
                                                          ),
                                                          Text(
                                                            '2',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                          )
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                // Hidoc Bulletin

                                // Text('data'),
                                Container(
                                  height: 370,
                                  decoration: const BoxDecoration(
                                      // border: Border.all()
                                      ),
                                  margin: const EdgeInsets.symmetric(horizontal: 15)
                                      .copyWith(top: 1),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            margin: const EdgeInsets.symmetric(
                                              horizontal: 15,
                                            ),
                                            child: const Text(
                                              'Hidoc Bulletin',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        FutureBuilder<List<News>>(
                                          future: ApiFetcher.fetchArticles(),
                                          builder: (context, snapshot) {
                                            if (snapshot.hasData) {
                                              final articles = snapshot.data!;
                                              return ListView.builder(
                                                scrollDirection: Axis.vertical,
                                                physics:
                                                    const NeverScrollableScrollPhysics(),
                                                controller: _scrollController,
                                                itemCount: articles.length,
                                                shrinkWrap: true,
                                                itemBuilder: (context, index) {
                                                  final article =
                                                      articles[index];
                                                  return newDisplay(
                                                      article: article);
                                                },
                                              );
                                            } else if (snapshot.hasError) {
                                              return Text("${snapshot.error}");
                                            }
                                            return const Center(
                                                child:
                                                    CircularProgressIndicator());
                                          },
                                        ),
                                      ]),
                                ),

                                // Trending Bullating
                                Container(
                                    height: 770,
                                    width: width,
                                    margin: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      color: Colors.blue[50],
                                      borderRadius:
                                          const BorderRadius.all(Radius.circular(15)),
                                    ),
                                    padding:
                                        const EdgeInsets.symmetric(horizontal: 15)
                                            .copyWith(top: 5, bottom: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            'Trending Hidoc Bulletin',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: const BoxDecoration(),
                                            child: FutureBuilder<
                                                List<TrandingBulletin>>(
                                              future: ApiFetcher
                                                  .fetchTrandingBulletin(),
                                              builder: (context, snapshot) {
                                                if (snapshot.hasData) {
                                                  final articles =
                                                      snapshot.data!;
                                                  return ListView.builder(
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    physics:
                                                        const NeverScrollableScrollPhysics(),
                                                    controller:
                                                        _scrollController,
                                                    itemCount: articles.length,
                                                    shrinkWrap: true,
                                                    itemBuilder:
                                                        (context, index) {
                                                      final article =
                                                          articles[index];
                                                      return trandingBulltinDisplay(
                                                          article: article);
                                                    },
                                                  );
                                                } else if (snapshot.hasError) {
                                                  return Text(
                                                      "${snapshot.error}");
                                                }
                                                return const Center(
                                                  child:
                                                      CircularProgressIndicator(),
                                                );
                                              },
                                            ),
                                          ),
                                        )
                                      ],
                                    )),

                                // Read More Bulletin Section
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 60, vertical: 10),
                                  color: const Color.fromARGB(255, 254, 163, 88),
                                  width: width,
                                  child: const Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: Text('Read More Bulletins',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16)),
                                    ),
                                  ),
                                ),

                                // Latest Articles Section
                                Container(
                                    height: height * 0.25,
                                    width: width,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 10),
                                    decoration:
                                        BoxDecoration(border: Border.all()),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          const Text(
                                            'Latest Articles',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Expanded(
                                            child: FutureBuilder(
                                                future: ApiFetcher
                                                    .fetchLatestArticles(),
                                                builder: (context, snapShot) {
                                                  if (snapShot.hasData) {
                                                    final articles =
                                                        snapShot.data!;
                                                    return ListView.builder(
                                                        physics:
                                                            const NeverScrollableScrollPhysics(),
                                                        itemCount:
                                                            articles.length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          return latestArticleDisplay(
                                                              width: width,
                                                              article:
                                                                  articles[
                                                                      index]);
                                                        });
                                                  } else if (snapShot
                                                      .hasError) {
                                                    return Text(
                                                        'Error ${snapShot.hasError}');
                                                  }
                                                  return const CircularProgressIndicator();
                                                }),
                                          )
                                        ],
                                      ),
                                    )),

                                // Explore more Articles Section
                                Container(
                                  height: height * 0.25,
                                  width: width,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 10),
                                  decoration:
                                      BoxDecoration(border: Border.all()),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        const Text(
                                          'Explore more in Articles',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Expanded(
                                          child: FutureBuilder(
                                              future: ApiFetcher
                                                  .fetchexploreArticles(),
                                              builder: (context, snapShot) {
                                                if (snapShot.hasData) {
                                                  final articles =
                                                      snapShot.data!;
                                                  return ListView.builder(
                                                    physics:
                                                        const NeverScrollableScrollPhysics(),
                                                    itemCount:
                                                        articles.length,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return exploreArticleDisplay(
                                                          article: articles[
                                                              index]);
                                                    },
                                                  );
                                                } else if (snapShot
                                                    .hasError) {
                                                  return Text(
                                                      'Error ${snapShot.hasError}');
                                                }
                                                return const CircularProgressIndicator();
                                              }),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                // Read More Button
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 10),
                                  width: width,
                                  color: const Color.fromARGB(255, 254, 163, 88),
                                  child: const Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Text(
                                        'Explore Hidoc Dr.',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ),

                                // What's More Section
                                const Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Text(
                                    "What's more on Hidoc Dr.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 21),
                                  ),
                                ),

                                Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 15),
                                  height: 300,
                                  // decoration: BoxDecoration(border: Border.all()),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 6,
                                        child: Container(
                                            padding: const EdgeInsets.all(15),
                                            color: const Color.fromARGB(
                                                255, 224, 224, 224),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                Text(
                                                  'News',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                SizedBox(
                                                    height: 30,
                                                    child: Text(
                                                        'Exports addressing burnout discuss the importance not only for self-care but also of improving workplace conditions.',
                                                        softWrap: true,
                                                        maxLines: 2,
                                                        style: TextStyle(
                                                            fontSize: 12)))
                                              ],
                                            )),
                                      ),
                                      Expanded(
                                        flex: 4,
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                  'https://cdn.shopify.com/s/files/1/0037/7690/5283/articles/Evidence-Based_eed23984-aa6b-4880-9fe6-4137a9cde69c.jpg?v=1613570931'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          // child: Image.network('https://cdn.shopify.com/s/files/1/0037/7690/5283/articles/Evidence-Based_eed23984-aa6b-4880-9fe6-4137a9cde69c.jpg?v=1613570931',fit: BoxFit.fill),
                                          // fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                // Quizees and Medical Calculators Section
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black)),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      ListTile(
                                        leading: CircleAvatar(
                                          radius: 25,
                                          backgroundColor: Colors.lightBlue[50],
                                          child: const Center(
                                              child: Icon(
                                                  FontAwesomeIcons.trophy,
                                                  color: Colors.blue)),
                                        ),
                                        title: Row(children: const [
                                          Text(
                                            'Quizzes :',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Participate & Win Exiting Prizes ',
                                            style: TextStyle(fontSize: 13),
                                          )
                                        ]),
                                      ),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 15),
                                          child: const Divider(
                                              height: 10,
                                              color: Colors.black,
                                              thickness: 1)),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      ListTile(
                                        leading: CircleAvatar(
                                          radius: 25,
                                          backgroundColor: Colors.lightBlue[50],
                                          child: const Center(
                                              child: Icon(
                                                  FontAwesomeIcons.trophy,
                                                  color: Colors.blue)),
                                        ),
                                        title: Row(children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                'Mediacal ',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14),
                                              ),
                                              Text(
                                                'Calculators :',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Column(
                                            children: const [
                                              Text(
                                                'Get Acess to 800+ Evidence ',
                                                style: TextStyle(fontSize: 13),
                                              ),
                                              Text(
                                                'Based Calculators',
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            ],
                                          )
                                        ]),
                                      ),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 15),
                                          child: const Divider(
                                              height: 10,
                                              color: Colors.black,
                                              thickness: 1)),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                    ],
                                  ),
                                ),

                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  width: width,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 222, 131, 28)
                                        .withOpacity(0.6),
                                  ),
                                  height: 70,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                'Social Network for doctors -  ',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14),
                                              ),
                                              Text(
                                                'A Special Feature on Hidoc Dr.',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.amber,
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            child: const Padding(
                                              padding:
                                                  EdgeInsets.all(8.0),
                                              child: Text('Visit'),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              desktopBody: Scaffold(
                body: SizedBox(
                  height: height,
                  width: width,
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: width,
                        decoration: const BoxDecoration(
                          // color: Colors.black,
                          color: Colors.white,
                          // border: Border.all(),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 60,
                                width: 120,
                                margin: const EdgeInsets.only(left: 20),
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/logo.png',
                                    ),
                                    // scale: 4,
                                    // fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 300,
                              ),
                              Container(
                                height: 60,
                                width: 750,
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    // border: Border.all(color: Colors.black)
                                    ),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Text('Social'),
                                        Text('|'),
                                        Text('Cases'),
                                        Text('|'),
                                        Text('Quizzes'),
                                        Text('|'),
                                        Text(
                                          'Articles',
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text('|'),
                                        Text('Drugs'),
                                        Text('|'),
                                        Text('Webinars'),
                                        Text('|'),
                                        Text('Calculators'),
                                        Text('|'),
                                        Text('Guidlines'),
                                        Text('|'),
                                        Text('Surveys'),
                                        Text('|'),
                                        Text('News')
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 60,
                                width: 140,
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.only(left: 180),
                                decoration: const BoxDecoration(
                                    // border: Bo rder.all()
                                    ),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: const [
                                        Icon(Icons.search),
                                        Icon(Icons.menu),
                                        CircleAvatar(
                                          radius: 17,
                                          backgroundColor: Colors.black,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 16,
                                            child: Text(
                                              'S',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.grey[100],
                          width: width,
                          height: height,
                          child: SingleChildScrollView(
                              controller: _scrollController,
                              // dragStartBehavior: DragStartBehavior.start,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: Text(
                                      'ARTICLES',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    margin:
                                        const EdgeInsets.symmetric(horizontal: 500),
                                    child: Container(
                                      margin:
                                          const EdgeInsets.symmetric(horizontal: 30),
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      height: 50,
                                      child: Center(
                                          child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(15.0)
                                                .copyWith(left: 200),
                                            child: const Text(
                                              'Critcal Area',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.all(15),
                                            child: Icon(
                                              Icons.arrow_drop_down,
                                              color: Colors.grey,
                                              size: 26,
                                            ),
                                          ),
                                        ],
                                      )),
                                    ),
                                  ),

                                  //
                                  Card(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 220, vertical: 15),
                                    child: Container(
                                      // margin: EdgeInsets.symmetric(horizontal: 30),
                                      decoration: const BoxDecoration(
                                          // color: Colors.amber,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      height: 250,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 3,
                                            child: Container(
                                                color: const Color.fromARGB(
                                                    255, 224, 224, 224),
                                                child: Stack(
                                                  children: [
                                                    const Center(
                                                      child: Icon(
                                                          FontAwesomeIcons
                                                              .newspaper,
                                                          color: Colors.grey,
                                                          size: 100),
                                                    ),
                                                    Positioned(
                                                        right: 0,
                                                        bottom: 0,
                                                        child: Container(
                                                          height: 58,
                                                          width: 80,
                                                          decoration:
                                                              const BoxDecoration(
                                                            color: Colors
                                                                .lightBlue,
                                                          ),
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: const [
                                                              Text(
                                                                'Points',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                              ),
                                                              SizedBox(
                                                                height: 2,
                                                              ),
                                                              Text(
                                                                '2',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                              )
                                                            ],
                                                          ),
                                                        ))
                                                  ],
                                                )),
                                          ),
                                          Expanded(
                                            flex: 7,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding:
                                                      EdgeInsets.all(15.0),
                                                  child: Text(
                                                    'Decoding the Nexus Criteria for Critical Care : A Compherensive Guide',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.symmetric(
                                                              horizontal: 15)
                                                          .copyWith(
                                                              bottom: 5),
                                                  child: const Text(
                                                    'The Nexus Criteria has been used for healthcare Professionals to determine wether the patients needs critical care or not.',
                                                    style: TextStyle(
                                                        fontSize: 11.2),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: const [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets
                                                                    .only(
                                                                left: 15),
                                                        child: Text(
                                                          'Read full article to earn points',
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              color:
                                                                  Colors.blue,
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .italic),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets
                                                                    .only(
                                                                left: 15),
                                                        child: Text(
                                                          'Published Date : 19 May 2023',
                                                          style: TextStyle(
                                                            color:
                                                                Colors.grey,
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  // Bullentin Section
                                  Container(
                                    margin:
                                        const EdgeInsets.symmetric(horizontal: 220),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 370,
                                          width: 500,
                                          decoration: const BoxDecoration(
                                              // border: Border.all()
                                              ),
                                          margin: const EdgeInsets.symmetric(
                                                  horizontal: 15)
                                              .copyWith(top: 15),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                    margin:
                                                        const EdgeInsets.symmetric(
                                                      horizontal: 15,
                                                    ),
                                                    child: const Text(
                                                      'Hidoc Bulletin',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                                FutureBuilder<List<News>>(
                                                  future: ApiFetcher
                                                      .fetchArticles(),
                                                  builder: (context, snapshot) {
                                                    if (snapshot.hasData) {
                                                      final articles =
                                                          snapshot.data!;
                                                      return ListView.builder(
                                                        physics:
                                                            const NeverScrollableScrollPhysics(),
                                                        itemCount:
                                                            articles.length,
                                                        shrinkWrap: true,
                                                        itemBuilder:
                                                            (context, index) {
                                                          final article =
                                                              articles[index];
                                                          return newDisplay(
                                                              article: article);
                                                        },
                                                      );
                                                    } else if (snapshot
                                                        .hasError) {
                                                      return Text(
                                                          "${snapshot.error}");
                                                    }
                                                    return const Center(
                                                        child:
                                                            CircularProgressIndicator());
                                                  },
                                                ),
                                              ]),
                                        ),
                                        Container(
                                            height: 700,
                                            width: 500,
                                            margin: const EdgeInsets.all(15),
                                            decoration: BoxDecoration(
                                              color: Colors.blue[50],
                                              borderRadius: const BorderRadius.all(
                                                  Radius.circular(15)),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                                    horizontal: 15)
                                                .copyWith(top: 5, bottom: 5),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding:
                                                      EdgeInsets.all(8.0),
                                                  child: Text(
                                                    'Trending Hidoc Bulletin',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(height: 15,),
                                                Expanded(
                                                  child: Container(
                                                    decoration: const BoxDecoration(),
                                                    child: FutureBuilder<
                                                        List<TrandingBulletin>>(
                                                      future: ApiFetcher
                                                          .fetchTrandingBulletin(),
                                                      builder:
                                                          (context, snapshot) {
                                                        if (snapshot.hasData) {
                                                          final articles =
                                                              snapshot.data!;
                                                          return ListView
                                                              .builder(
                                                            physics:
                                                                const NeverScrollableScrollPhysics(),
                                                            itemCount:
                                                                articles.length,
                                                            shrinkWrap: true,
                                                            itemBuilder:
                                                                (context,
                                                                    index) {
                                                              final article =
                                                                  articles[
                                                                      index];
                                                              return trandingBulltinDisplay(
                                                                  article:
                                                                      article);
                                                            },
                                                          );
                                                        } else if (snapshot
                                                            .hasError) {
                                                          return Text(
                                                              "${snapshot.error}");
                                                        }
                                                        return const Center(
                                                          child:
                                                              CircularProgressIndicator(),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )),
                                      ],
                                    ),
                                  ),
                                  // Read More Bulletin Button
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 590, vertical: 10),
                                    color: Colors.blue[300],
                                    width: width,
                                    child: const Center(
                                      child: Padding(
                                        padding: EdgeInsets.all(15.0),
                                        child: Text('Read More Bulletins',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14)),
                                      ),
                                    ),
                                  ),

                                  // Articles in Row
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 220, vertical: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: 190,
                                            width: 320,
                                            decoration: BoxDecoration(
                                                border: Border.all()),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                children: [
                                                  const Text(
                                                    'Latest Articles',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Expanded(
                                                    child: SizedBox(
                                                      width: 300,
                                                      child: FutureBuilder(
                                                          future: ApiFetcher
                                                              .fetchLatestArticles(),
                                                          builder: (context,
                                                              snapShot) {
                                                            if (snapShot
                                                                .hasData) {
                                                              final articles =
                                                                  snapShot
                                                                      .data!;
                                                              return ListView
                                                                  .builder(
                                                                      physics:
                                                                          const NeverScrollableScrollPhysics(),
                                                                      itemCount:
                                                                          articles
                                                                              .length,
                                                                      itemBuilder:
                                                                          (context,
                                                                              index) {
                                                                        return latestArticleDisplay(
                                                                            width:
                                                                                width,
                                                                            article:
                                                                                articles[index]);
                                                                      });
                                                            } else if (snapShot
                                                                .hasError) {
                                                              return Text(
                                                                  'Error ${snapShot.hasError}');
                                                            }
                                                            return const CircularProgressIndicator();
                                                          }),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )),
                                        Container(
                                          height: 300,
                                          width: 320,
                                          decoration: BoxDecoration(
                                              border: Border.all()),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: [
                                                const Text(
                                                  'Explore more in Articles',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Expanded(
                                                  child: FutureBuilder(
                                                      future: ApiFetcher
                                                          .fetchexploreArticles(),
                                                      builder: (context,
                                                          snapShot) {
                                                        if (snapShot
                                                            .hasData) {
                                                          final articles =
                                                              snapShot.data!;
                                                          return ListView
                                                              .builder(
                                                            physics:
                                                                const NeverScrollableScrollPhysics(),
                                                            itemCount:
                                                                articles
                                                                    .length,
                                                            itemBuilder:
                                                                (context,
                                                                    index) {
                                                              return exploreArticleDisplay(
                                                                  article:
                                                                      articles[
                                                                          index]);
                                                            },
                                                          );
                                                        } else if (snapShot
                                                            .hasError) {
                                                          return Text(
                                                              'Error ${snapShot.hasError}');
                                                        }
                                                        return const CircularProgressIndicator();
                                                      }),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                                height: 190,
                                                width: 350,
                                                decoration: BoxDecoration(
                                                    border: Border.all()),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    children: [
                                                      const Text(
                                                        'Latest Articles',
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      Expanded(
                                                        child: SizedBox(
                                                          width: 300,
                                                          child: FutureBuilder(
                                                              future: ApiFetcher
                                                                  .fetchLatestArticles(),
                                                              builder: (context,
                                                                  snapShot) {
                                                                if (snapShot
                                                                    .hasData) {
                                                                  final articles =
                                                                      snapShot
                                                                          .data!;
                                                                  return ListView
                                                                      .builder(
                                                                          physics:
                                                                              const NeverScrollableScrollPhysics(),
                                                                          itemCount: articles
                                                                              .length,
                                                                          itemBuilder:
                                                                              (context, index) {
                                                                            return latestArticleDisplay(
                                                                                width: width,
                                                                                article: articles[index]);
                                                                          });
                                                                } else if (snapShot
                                                                    .hasError) {
                                                                  return Text(
                                                                      'Error ${snapShot.hasError}');
                                                                }
                                                                return const CircularProgressIndicator();
                                                              }),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                )),
                                            // Button
                                            Container(
                                              margin: const EdgeInsets.symmetric(
                                                  horizontal: 40, vertical: 25),
                                              width: 320,
                                              color: Colors.blue[400],
                                              child: const Center(
                                                child: Padding(
                                                  padding: EdgeInsets.all(
                                                      10.0),
                                                  child: Text(
                                                    'Explore Hidoc Dr.',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    color: Colors.white,
                                    height: 400,
                                    width: width,
                                    child: Column(
                                      children: [
                                        // What's More Section
                                        const Padding(
                                          padding: EdgeInsets.all(15.0),
                                          child: Text(
                                            "What's more on Hidoc Dr.",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 21),
                                          ),
                                        ),

                                        Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 200),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.symmetric(
                                                    horizontal: 15),
                                                height: 225,
                                                width: 700,
                                                // decoration: BoxDecoration(border: Border.all()),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      flex: 6,
                                                      child: Container(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  25),
                                                          color: const Color.fromARGB(
                                                              255,
                                                              240,
                                                              240,
                                                              240),
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: const [
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              Text(
                                                                'News',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 35,
                                                              ),
                                                              SizedBox(
                                                                  height: 30,
                                                                  child: Text(
                                                                      'Exports addressing burnout discuss the importance not only for self-care but also of improving workplace conditions.',
                                                                      softWrap:
                                                                          true,
                                                                      maxLines:
                                                                          2,
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              12)))
                                                            ],
                                                          )),
                                                    ),
                                                    Expanded(
                                                      flex: 4,
                                                      child: Container(
                                                        decoration:
                                                            const BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                            image: NetworkImage(
                                                                'https://cdn.shopify.com/s/files/1/0037/7690/5283/articles/Evidence-Based_eed23984-aa6b-4880-9fe6-4137a9cde69c.jpg?v=1613570931'),
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        // child: Image.network('https://cdn.shopify.com/s/files/1/0037/7690/5283/articles/Evidence-Based_eed23984-aa6b-4880-9fe6-4137a9cde69c.jpg?v=1613570931',fit: BoxFit.fill),
                                                        // fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              //
                                              Container(
                                                margin: const EdgeInsets.symmetric(
                                                  horizontal: 15,
                                                ),
                                                height: 162,
                                                width: 370,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black)),
                                                child: Column(
                                                  children: [
                                                    const SizedBox(
                                                      height: 15,
                                                    ),
                                                    ListTile(
                                                      leading: CircleAvatar(
                                                        radius: 25,
                                                        backgroundColor: Colors
                                                            .lightBlue[50],
                                                        child: const Center(
                                                            child: Icon(
                                                                FontAwesomeIcons
                                                                    .trophy,
                                                                color: Colors
                                                                    .blue)),
                                                      ),
                                                      title: Row(children: const [
                                                        Text(
                                                          'Quizzes :',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 14),
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          'Participate & Win Exiting Prizes ',
                                                          style: TextStyle(
                                                              fontSize: 13),
                                                        )
                                                      ]),
                                                    ),
                                                    const SizedBox(
                                                      height: 7,
                                                    ),
                                                    Container(
                                                        margin: const EdgeInsets
                                                            .symmetric(
                                                                horizontal: 15),
                                                        child: const Divider(
                                                            height: 10,
                                                            color: Colors.grey,
                                                            thickness: 1)),
                                                    const SizedBox(
                                                      height: 7,
                                                    ),
                                                    ListTile(
                                                      leading: CircleAvatar(
                                                        radius: 25,
                                                        backgroundColor: Colors
                                                            .lightBlue[50],
                                                        child: const Center(
                                                            child: Icon(
                                                                FontAwesomeIcons
                                                                    .trophy,
                                                                color: Colors
                                                                    .blue)),
                                                      ),
                                                      title: Row(children: [
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              'Mediacal ',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 14),
                                                            ),
                                                            Text(
                                                              'Calculators :',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 14),
                                                            ),
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                          width: 5,
                                                        ),
                                                        Column(
                                                          children: const [
                                                            Text(
                                                              'Get Acess to 800+ Evidence ',
                                                              style: TextStyle(
                                                                  fontSize: 13),
                                                            ),
                                                            Text(
                                                              'Based Calculators',
                                                              style: TextStyle(
                                                                  fontSize: 13),
                                                            ),
                                                          ],
                                                        )
                                                      ]),
                                                    ),
                                                    const SizedBox(
                                                      height: 7,
                                                    ),
                                                    Container(
                                                        margin: const EdgeInsets
                                                            .symmetric(
                                                                horizontal: 15),
                                                        child: const Divider(
                                                            height: 10,
                                                            color: Colors.grey,
                                                            thickness: 1)),
                                                    const SizedBox(
                                                      height: 7,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 220, vertical: 15),
                                  width: width,
                                  decoration: BoxDecoration(
                                    color: Colors.blue.withOpacity(0.4),
                                  ),
                                  height: 70,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Center(
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                Text(
                                                  'Social Network for doctors -  ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 14),
                                                ),
                                                Text(
                                                  'A Special Feature on Hidoc Dr.',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 14),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(right: 15),
                                            decoration: BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0).copyWith(left: 25,right: 25),
                                              child: const Text('Visit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                      ],
                                    ),
                                  ),
                                  //
                                  
                                ],
                              ),),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}