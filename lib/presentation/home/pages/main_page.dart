import 'package:flutter/material.dart';
import 'package:my_work/core/assets/assets.dart';
import 'package:my_work/core/constants/color.dart';
import 'package:my_work/presentation/home/pages/home_page.dart';
import 'package:my_work/presentation/home/pages/qr_code.dart';
import 'package:my_work/presentation/home/pages/rsvp_page.dart';
import 'package:my_work/presentation/home/pages/setting_page.dart';
import 'package:my_work/presentation/home/pages/tamu_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const TamuPage(),
    const QrCodePage(),
    const RsvpPage(),
    const SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            SizedBox(height: 40, child: Assets.images.logo2.image()),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButton: SizedBox(
        width: 65,
        height: 65,
        child: FloatingActionButton(
            shape: const CircleBorder(),
            backgroundColor: appColors.primary,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QrCodePage(),
                  ));
            },
            child: Image.asset(Assets.icons.iconQrcode.path)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: appColors.white,
          elevation: 6,
          currentIndex: _selectedIndex,
          selectedItemColor: appColors.primary,
          unselectedItemColor: appColors.grey,
          type: BottomNavigationBarType.fixed,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                Assets.icons.iconHome.path,
                color: _selectedIndex == 0 ? appColors.primary : appColors.grey,
              ),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                Assets.icons.iconBookClosed.path,
                color: _selectedIndex == 1 ? appColors.primary : appColors.grey,
              ),
              label: 'Tamu',
            ),
            const BottomNavigationBarItem(icon: SizedBox.shrink(), label: ''),
            BottomNavigationBarItem(
              icon: Image.asset(
                Assets.icons.iconBook.path,
                color: _selectedIndex == 3 ? appColors.primary : appColors.grey,
              ),
              label: 'RSVP',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                Assets.icons.iconCog.path,
                color: _selectedIndex == 4 ? appColors.primary : appColors.grey,
              ),
              label: 'Settings',
            ),
          ]),
    );
  }

  void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {});
  }
}
