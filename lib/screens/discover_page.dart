import 'package:flutter/material.dart';
import 'package:task1flutetr/models/news_item_model.dart';
import 'package:task1flutetr/widgets/news_item_card.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(left: 16),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 241, 184, 203),
          ),
          child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Discover',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            const Text(
              'News from all /around world',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              padding: const EdgeInsets.all(12),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(30)),
              height: 50,
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey[500],
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'Search',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                  const Spacer(),
                  const SizedBox(
                    width: 25,
                    height: 25,
                    child:
                        Image(image: AssetImage('assets/images/sliders.png')),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Text(
                      'All',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  myContainer('Poletic'),
                  myContainer('Sport'),
                  myContainer('Education'),
                  myContainer('Art'),
                  myContainer('World'),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    NewsItemCard(
                      newsItem: NewsItem(
                          image:
                              'https://simplifaster.com/wp-content/uploads/2020/11/Volleyball-Training-1024x536.jpg',
                          category: 'Sport',
                          title: 'What training do volleyball players need ',
                          ownerName: 'McKindney',
                          ownerImage:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx-t1Zb-NbfGObGlhKgyuN2SFJ2722HdOCpw&usqp=CAU',
                          createdAt: 'Feb27,2023'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    NewsItemCard(
                      newsItem: NewsItem(
                          image:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_LwXXCexww3gsMqytsowpCNNRiAogHcZFqg&usqp=CAU',
                          category: 'Education',
                          title:
                              'Secondary school places:When do parents find out ?',
                          ownerName: 'Rosemary',
                          ownerImage:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVKz2-gSwKu8XOGCdREYbpf7EBOFCDpMy_SA&usqp=CAU',
                          createdAt: 'Feb28,2023'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    NewsItemCard(
                      newsItem: NewsItem(
                          image:
                              'https://moi.gov.ps/Content/Data/Images/original/66c4e3cd-fbcc-4f26-9863-fb8ce38e4ab5.jpg?mode=crop&anchor=topleft&scale=both',
                          category: 'World',
                          title:
                              '6 Houses Destroyed In Massive Fire In Assam K',
                          ownerName: 'AslamK',
                          ownerImage:
                              'https://media.istockphoto.com/id/1248770730/photo/serious-authoritative-man-with-folded-arms.jpg?s=612x612&w=0&k=20&c=L308VknCjSP03Jusb3HnBao2qpjH3faWRPRqt5IB3XE=',
                          createdAt: 'Feb27,2023'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    NewsItemCard(
                      newsItem: NewsItem(
                          image:
                              'https://cite.org.zw/wp-content/uploads/2019/03/accident1.jpg',
                          category: 'World',
                          title:
                              'At Least 35 people killed in separate roead craches in AS',
                          ownerName: 'Johny',
                          ownerImage:
                              'https://img.mensxp.com/media/content/2018/Aug/female-police-officers-from-around-the-world-wed-love-to-get-arrested-by-1400x653-1535717167.jpg',
                          createdAt: 'Mar5,2023'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    NewsItemCard(
                      newsItem: NewsItem(
                          image:
                              'https://cdn.sanity.io/images/cxgd3urn/production/a5a3a626cd273fc6f9b70400b9ec469a564af616-1454x828.jpg?rect=0,0,1454,827&w=640&h=364&fit=crop&auto=format',
                          category: 'Art',
                          title:
                              'Five highlights of New York Upstate Art Weekend 2023',
                          ownerName: 'Haya',
                          ownerImage:
                              'https://scontent.fgza2-3.fna.fbcdn.net/v/t39.30808-6/360139911_3500871953575132_8653486480875354984_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=k_ic7h2pdScAX8lBVPg&_nc_oc=AQmfpdVIoXzIMzUH32CfEiOPT4JF8npaMmFZtAzocwWSJQsePThY5Zum3FRo6gPK0Qk&_nc_ht=scontent.fgza2-3.fna&oh=00_AfA5DQGVHmlK_NgJcqUBas9yQJ4FyZ-wdypxu17qC3DAng&oe=64C10721',
                          createdAt: 'Joul23,2023'),
                    ),
                    const SizedBox(
                      height: 20,
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

StatelessWidget myContainer(String s) {
  Text t = Text(
    s,
    style: const TextStyle(
        color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500),
  );

  Container cont = Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(30)),
      child: t);
  return cont;
}
