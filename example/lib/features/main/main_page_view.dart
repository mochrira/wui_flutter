import 'package:flutter/material.dart';
import 'package:wui_flutter/utils/responsive.dart';

class MainpageView extends StatefulWidget {
  const MainpageView({super.key});

  @override
  State<MainpageView> createState() => _MainpageViewState();
}

class _MainpageViewState extends State<MainpageView> {

  Widget _buildContent(BuildContext context) {
    return const Center(
      child: Text("Content Area")
    );
  }

  Widget _buildTablet(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Column(
              children: [
                Container(
                  width: 48, height: 48,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40)
                  )
                ),
                Expanded(
                  child: NavigationRail(
                    destinations: const [
                      NavigationRailDestination(
                        icon: Icon(Icons.home), 
                        label: Text("Home")
                      ),
                      NavigationRailDestination(
                        icon: Icon(Icons.receipt_long), 
                        label: Text("Transaksi")
                      ),
                      NavigationRailDestination(
                        icon: Icon(Icons.local_dining), 
                        label: Text("Menu")
                      )
                    ], 
                    selectedIndex: 0,
                    minWidth: 100,
                    indicatorColor: Theme.of(context).colorScheme.primary,
                    selectedLabelTextStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w500
                    ),
                    selectedIconTheme: IconThemeData(
                      color: Theme.of(context).colorScheme.onPrimary
                    ),
                    labelType: NavigationRailLabelType.all,
                    groupAlignment: 0
                  ),
                ),
                Material(
                  child: InkWell(
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Theme.of(context).colorScheme.onSurface
                      ),
                    )
                  )
                )
              ],
            ),
          ),
          Expanded(
            child: _buildContent(context)
          )
        ],
      ),
    );
  }

  

  @override
  Widget build(BuildContext context) {

    bool isTablet = WuiResponsive.isBreakpointUp(context, WuiBreakpoint.md);

    return Scaffold(
      bottomNavigationBar: isTablet ? null : NavigationBar(
        indicatorColor: Theme.of(context).primaryColor,
        labelTextStyle: WidgetStateProperty.fromMap({
          WidgetState.selected: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: Theme.of(context).primaryColor
          )
        }),
        selectedIndex: 3,
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.home_filled),
            selectedIcon: Icon(Icons.home_filled, color: Theme.of(context).colorScheme.onPrimary),
            label: "Home"
          ),
          NavigationDestination(
            icon: const Icon(Icons.receipt_long),
            selectedIcon: Icon(Icons.receipt_long, color: Theme.of(context).colorScheme.onPrimary),
            label: "Transaksi"
          ),
          NavigationDestination(
            icon: const Icon(Icons.local_dining),
            selectedIcon: Icon(Icons.local_dining, color: Theme.of(context).colorScheme.onPrimary),
            label: "Menu"
          ),
          NavigationDestination(
            icon: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.onSurface,
                  width: 1
                ),
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            selectedIcon: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.onSurface,
                  width: 1
                ),
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            label: "Akun Saya"
          )
        ]
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return isTablet ? _buildTablet(context) : _buildContent(context);
        }
      ),
    );
  }
}