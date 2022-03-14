import 'package:flutter/material.dart';
import 'package:flutter_parcel_app/ui/widgets/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text(
              'Track parcel',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          snap: true,
          floating: true,
          centerTitle: false,
          titleSpacing: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    'https://images.search.yahoo.com/images/view;_ylt=Awr9.1Yx2C1iG7U7MW6JzbkF;_ylu=c2VjA3NyBHNsawNpbWcEb2lkAzliMWE4NjhmZmEyNTZkZjYzMjBhMjdjMDAxMDY0NjMzBGdwb3MDOARpdANiaW5n?back=https%3A%2F%2Fimages.search.yahoo.com%2Fsearch%2Fimages%3Fp%3Dgambar%2Bbunga%26type%3DE210US91215G91642%26fr%3Dmcafee%26fr2%3Dpiv-web%26tab%3Dorganic%26ri%3D8&w=3024&h=3024&imgurl=images.pexels.com%2Fphotos%2F1381530%2Fpexels-photo-1381530.jpeg%3Fcs%3Dsrgb%26dl%3Dpexels-1381530.jpg%26fm%3Djpg&rurl=https%3A%2F%2Fbunganyaindah.blogspot.com%2F2020%2F11%2F14-bunga-matahari-kuning.html&size=1259.9KB&p=gambar+bunga&oid=9b1a868ffa256df6320a27c001064633&fr2=piv-web&fr=mcafee&tt=14%2B+Bunga+Matahari+Kuning+-+Gambar+Bunga+Indah&b=0&ni=21&no=8&ts=&tab=organic&sigr=crNqTN2XWpV4&sigb=OSVbf1vRE9qb&sigi=BgyaH7pTAyTY&sigt=umy5xkRCA8mO&.crumb=hNiHo6z7dgQ&fr=mcafee&fr2=piv-web&type=E210US91215G91642',
                  ),
                ),
              ),
            ),
          ],
          shadowColor: Colors.transparent,
          expandedHeight: 426,
          pinned: true,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
          flexibleSpace: FlexibleSpaceBar(
            background: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 64),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Enter parcel number or scan QR code',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 40,
                            top: 7,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  height: 49,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              GestureDetector(
                                onTap: () {
                                  print('Scan object pressed!');
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(14),
                                  width: 50,
                                  height: 49,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                  child: SvgPicture.asset(
                                      'assets/images/icon_qrcode.svg'),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 48,
                          width: double.infinity,
                          child: TextButton(
                            onPressed: () {
                              print('button pressed');
                            },
                            child: Text(
                              'Track parcel',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            style: Theme.of(context).textButtonTheme.style,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.only(top: 32),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'My parcels',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ],
              ),
            )
          ]),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (_, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  height: 174,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Theme.of(context).backgroundColor,
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).shadowColor,
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset:
                            const Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '00359007738060313786',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          Container(
                            height: 31,
                            width: 78,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Amazon_logo.svg/1000px-Amazon_logo.svg.png',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('In transit',
                              style: Theme.of(context).textTheme.headline4),
                          Text(
                            'Last update: 3 hours ago',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          SizedBox(
                            height: 5,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(2.5),
                              child: LinearProgressIndicator(
                                value: 0.7,
                                color: Theme.of(context)
                                    .appBarTheme
                                    .backgroundColor,
                                backgroundColor: const Color(0xFFF8F8F8),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 60,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Details',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                SvgPicture.asset(
                                  'assets/images/icon_details.svg',
                                ),
                              ],
                            ),
                            Container(
                              height: 1,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            childCount: 20,
          ),
        ),
      ],
    );
  }
}
