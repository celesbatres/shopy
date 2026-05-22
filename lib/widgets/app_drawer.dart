import 'package:flutter/material.dart';
import 'package:shopy/pages/account_page.dart';
import 'package:shopy/pages/favorites_page.dart';
import 'package:shopy/pages/login_page.dart';
import 'package:shopy/pages/orders_page.dart';
import 'package:shopy/pages/products_page.dart';
import 'package:shopy/pages/register_page.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  void _navigateTo(BuildContext context, Widget page) {
    Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute<void>(builder: (_) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 120,
            child: DrawerHeader(
              margin: EdgeInsets.zero,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () => _navigateTo(
                            context,
                            const LoginPage(),
                          ),
                          child: Card(
                            child: SizedBox(
                              width: double.infinity,
                              height: 40,
                              child: Center(child: Text('Iniciar sesión')),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        InkWell(
                          onTap: () => _navigateTo(
                            context,
                            const RegisterPage(),
                          ),
                          child: Card(
                            child: SizedBox(
                              width: double.infinity,
                              height: 40,
                              child: Center(child: Text('Crear cuenta')),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Mi cuenta'),
            onTap: () => _navigateTo(context, const AccountPage()),
          ),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Mis favoritos'),
            onTap: () => _navigateTo(context, const FavoritesPage()),
          ),
          ListTile(
            leading: const Icon(Icons.receipt_long),
            title: const Text('Mis pedidos'),
            onTap: () => _navigateTo(context, const OrdersPage()),
          ),
          ListTile(
            leading: const Icon(Icons.inventory_2),
            title: const Text('Mis productos'),
            onTap: () => _navigateTo(context, const ProductsPage()),
          ),
        ],
      ),
    );
  }
}
