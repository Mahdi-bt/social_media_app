import 'package:flutter/material.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);
  static const String routeName = '/';
  static Route route() => MaterialPageRoute(
      builder: (_) => const HomeLayout(),
      settings: const RouteSettings(name: routeName));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            customAppBar(context),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 15,
                      ),
                  itemBuilder: (context, index) => const buildStoryWidget(),
                  itemCount: 10,
                  scrollDirection: Axis.horizontal),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCardItem() => Card();
  Widget customAppBar(context) => Container(
        height: 80,
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        width: double.infinity,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.grey.shade300,
                child: const Icon(
                  Icons.camera_alt_rounded,
                  color: Colors.black,
                )),
          ),
          Text(
            'Explore',
            style: Theme.of(context).textTheme.headline1,
          ),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.grey.shade300,
                child: const Icon(
                  Icons.notifications,
                  color: Colors.black,
                )),
          ),
        ]),
      );
}

class buildStoryWidget extends StatelessWidget {
  const buildStoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: const CircleAvatar(
        foregroundColor: Colors.blue,
        radius: 40,
        child: CircleAvatar(
          radius: 36,
          backgroundImage: NetworkImage(
              'https://www.diethelmtravel.com/wp-content/uploads/2016/04/bill-gates-wealthiest-person.jpg'),
        ),
      ),
    );
  }
}
