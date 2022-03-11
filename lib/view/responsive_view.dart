import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveView extends StatelessWidget {
  const ResponsiveView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
      child: Scaffold(
          body: SizedBox.expand(
            child: Row(
              children: [
                ScreenTypeLayout.builder(
                  mobile: (_) => const SizedBox(),
                  tablet: (_) => const _NavigationRail(),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        width: double.infinity,
                        color: const Color(0xffFFF6E7),
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const SizedBox(
                              height: 103,
                            ),
                            Text(
                              'Turismo',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                            ),
                            const SizedBox(
                              height: 9,
                            ),
                            Text(
                                'Siempre hay un lugar por conocer y queremos acompañarte, ¡Tú eliges el lugar! ¿A dónde vamos 😃? ',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(
                                      fontWeight: FontWeight.w400,
                                    )),
                            const SizedBox(
                              height: 33,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Text('POPULARES',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary)),
                      ),
                      const _PlaceCardList(),
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Text('RECOMENDADOS',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary)),
                      ),
                      const _RecommendedPlaceList(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: ScreenTypeLayout.builder(
            mobile: (_) => const _BottomNavigationBar(),
            tablet: (_) => const SizedBox(),
            desktop: (_) => const SizedBox(),
          )),
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  const _BottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/house_icon.svg'),
          label: 'Inicio'),
      BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/bus_icon.svg'), label: 'Rutas'),
      BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/binoculars_icon.svg'),
          label: 'Turismo')
    ]);
  }
}

class _NavigationRail extends StatelessWidget {
  const _NavigationRail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: 0,
      labelType: NavigationRailLabelType.all,
      destinations: [
        NavigationRailDestination(
            icon: SvgPicture.asset('assets/icons/house_icon.svg'),
            label: const Text('Inicio')),
        NavigationRailDestination(
            icon: SvgPicture.asset('assets/icons/bus_icon.svg'),
            label: const Text('Rutas')),
        NavigationRailDestination(
            icon: SvgPicture.asset('assets/icons/binoculars_icon.svg'),
            label: const Text('Turismo'))
      ],
    );
  }
}

class _PlaceCardList extends StatefulWidget {
  const _PlaceCardList({
    Key? key,
  }) : super(key: key);

  @override
  State<_PlaceCardList> createState() => _PlaceCardListState();
}

class _PlaceCardListState extends State<_PlaceCardList> {
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 275,
      child: Scrollbar(
        controller: controller,
        child: ListView.separated(
            controller: controller,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            itemCount: 10,
            separatorBuilder: (_, __) {
              return const SizedBox(
                width: 10,
              );
            },
            itemBuilder: (_, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: SizedBox(
                    width: 243,
                    height: 271,
                    child: Stack(
                      children: [
                        Positioned.fill(
                            child: Image.network(
                          'https://i.ibb.co/7pY1hhq/image-98.png',
                          fit: BoxFit.cover,
                        )),
                        Positioned.fill(
                            child: Container(
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                Colors.transparent,
                                Colors.black45
                              ])),
                        )),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30.0, vertical: 23),
                            child: Text(
                              'Monasterio de Santa Catalina',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    )),
              );
            }),
      ),
    );
  }
}

class _RecommendedPlaceList extends StatelessWidget {
  const _RecommendedPlaceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        // ! Try to avoid this, use sliver instead
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        // !
        itemCount: 20,
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            maxCrossAxisExtent: 600,
            mainAxisExtent: 120),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffF9F9FB),
            ),
            padding: const EdgeInsets.all(14),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: SizedBox(
                    width: 92,
                    height: 92,
                    child: Image.network(
                      'https://i.ibb.co/6YpBHrh/image-102.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Mansión del Fundador',
                        maxLines: 2,
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                          'Finca colonial que data del año 1500, sede del fundador de Arequipa, con Occaecat aliquip culpa commodo mollit sint qui enim tempor ipsum laborum sunt quis.',
                          maxLines: 2,
                          style: Theme.of(context).textTheme.bodyText2!)
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
