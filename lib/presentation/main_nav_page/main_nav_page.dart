import 'package:auto_route/auto_route.dart';
import 'package:creartify/generated/assets.gen.dart';
import 'package:creartify/presentation/router/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainNavPage extends StatelessWidget {
  const MainNavPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = <({SvgGenImage icon})>[
      (icon: Assets.icons.bottomBar.home),
      (icon: Assets.icons.bottomBar.profile),
    ];
    return AutoTabsScaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      routes: const [
        HomeRoute(),
        ProfileRoute(),
      ],
      transitionBuilder: (context, child, animation) => child,
      lazyLoad: false,
      bottomNavigationBuilder: (_, tabsRouter) {
        final theme = Theme.of(context).bottomNavigationBarTheme;
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: List<BottomNavigationBarItem>.generate(
            items.length,
            (index) {
              final elem = items[index];
              final bool isSelected = tabsRouter.activeIndex == index;
              final color = isSelected ? theme.selectedItemColor : theme.unselectedItemColor;
              return BottomNavigationBarItem(
                icon: elem.icon.svg(
                  colorFilter: color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
                ),
                label: '',
              );
            },
          ),
        );
      },
    );
  }
}
