import 'package:commerce_app/Theme/theme_provider.dart';
import 'package:commerce_app/components/bottom_nav_bar.dart';
import 'package:commerce_app/pages/cart_page.dart';
import 'package:commerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //selected index to control bottom nav bar
int selectedIndex = 0;

//method to update selected index to change pages
void navigateBottomBar(index){
  setState(() {
    selectedIndex=index;
  });
}

//pages to display
final List pages= [
  //shop page
  const ShopPage(),
  //cart page
  const CartPage(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(backgroundColor: Colors.transparent,
      title: ElevatedButton(
        onPressed:() {
        Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
      }, 
      child: const Text('Mode'),
      ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset(
                  'lib/images/nike.png',
                  color: Colors.white,
                  ),
            ),
            ),
            const SizedBox(height: 10,),
            const ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: Icon(Icons.home),
              title: Text('H O M E'),
            ),
            const ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: Icon(Icons.info),
              title: Text('A B O U T'),
            ),
            const ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: Icon(Icons.settings),
              title: Text('S E T T I N G S'),
            ),
              ],
            ),
           const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: ListTile(
                iconColor: Colors.white,
                textColor: Colors.white,
                leading: Icon(Icons.logout),
                title: Text('L O G O U T'),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavBar(
        onTabChange:(index) => navigateBottomBar(index),
         ),
        body: pages[selectedIndex],
    );
  }
}