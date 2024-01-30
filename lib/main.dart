import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zealcrave',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Zealcrave'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Welcome to the Zealcrave!',
          ),
          const SizedBox(height: 20),
          Text(
            'Explore our menu and place your order.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildDashboardItem(
                context,
                'View Restaurants',
                Icons.restaurant,
                    () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RestaurantListPage()),
                  );
                },
              ),

              _buildDashboardItem(
                context,
                'View General Stores',
                Icons.store,
                    () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GeneralStoreListPage()),
                  );
                },
              ),
              _buildDashboardItem(
                context,
                'View Departmental Stores',
                Icons.store_mall_directory_rounded,
                    () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DepartmentalStoreListPage()),
                  );
                },
              ),
              _buildDashboardItem(
                context,
                'View GreenStores',
                Icons.streetview,
                    () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GreenGrocersListPage()),
                  );
                },
              ),
              _buildDashboardItem(
                context,
                'View Dairy Stores',
                Icons.bakery_dining,
                    () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DairyListPage()),
                  );
                },
              ),
              _buildDashboardItem(
                context,
                'View Street Food',
                Icons.fastfood,
                    () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StreetFoodListPage()),
                  );
                },
              ),
            ],
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // You can add your desired logic here
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildDashboardItem(BuildContext context, String label, IconData icon, Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              size: 40,
              color: Colors.white,
            ),
            const SizedBox(height: 10),
            Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RestaurantListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurants'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Cakeify'),
            subtitle: Text('Too creamy to be true'),
            onTap: () {
              // Navigate to the menu page of Restaurant 1
            },
          ),
          ListTile(
            title: Text('Pizza Pester'),
            subtitle: Text('We bake so u dont'),
            onTap: () {
              // Navigate to the menu page of Restaurant 2
            },
          ),
          ListTile(
            title: Text('Dosa Don'),
            subtitle: Text('Even cops from 100 countries search for us'),
            onTap: () {
              // Navigate to the menu page of Restaurant 3
            },
          ),
          ListTile(
            title: Text('Moon Bucks'),
            subtitle: Text('Economy class :coffee'),
            onTap: () {
              // Navigate to the menu page of Restaurant 4
            },
          ),
          // Add more ListTile widgets for additional restaurants
        ],
      ),
    );
  }

// Add other ListPages similar to RestaurantListPage
}
class GeneralStoreListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('General Stores'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('SuperMart'),
            subtitle: Text('Your one-stop shop for groceries'),
            onTap: () {
              // Add logic to navigate to the details page of SuperMart
            },
          ),
          ListTile(
            title: Text('Quick Stop'),
            subtitle: Text('Convenience at your doorstep'),
            onTap: () {
              // Add logic to navigate to the details page of Quick Stop
            },
          ),
          // Add more ListTile widgets for additional general stores
        ],
      ),
    );
  }
}
class DepartmentalStoreListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Departmental Stores'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Super Bazzar'),
            subtitle: Text('Your one-stop shop for groceries'),
            onTap: () {
              // Add logic to navigate to the details page of SuperMart
            },
          ),
          ListTile(
            title: Text('Shee Complex'),
            subtitle: Text('Convenience at your doorstep'),
            onTap: () {
              // Add logic to navigate to the details page of Quick Stop
            },
          ),
          // Add more ListTile widgets for additional general stores
        ],
      ),
    );
  }
}
class StreetFoodListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Street Food'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('India Town'),
            subtitle: Text('Authentically Indian'),
            onTap: () {
              // Add logic to navigate to the details page of SuperMart
            },
          ),
          ListTile(
            title: Text('Ayodhya Food Art'),
            subtitle: Text('Food never looked so pretty'),
            onTap: () {
              // Add logic to navigate to the details page of Quick Stop
            },
          ),
          // Add more ListTile widgets for additional general stores
        ],
      ),
    );
  }
}
class GreenGrocersListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Green Grocers'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Farmland'),
            subtitle: Text('Fresh and fruity'),
            onTap: () {
              // Add logic to navigate to the details page of SuperMart
            },
          ),
          ListTile(
            title: Text('SHYAAM Vegitables'),
            subtitle: Text('Fresh Vegitables'),
            onTap: () {
              // Add logic to navigate to the details page of Quick Stop
            },
          ),
          // Add more ListTile widgets for additional general stores
        ],
      ),
    );
  }
}
class DairyListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dairy Food'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Asirvad Dairy Products'),
            subtitle: Text('Authentic certified and approved'),
            onTap: () {
              // Add logic to navigate to the details page of SuperMart
            },
          ),
          ListTile(
            title: Text('Shree Dairy products'),
            subtitle: Text('Pure and perfect'),
            onTap: () {
              // Add logic to navigate to the details page of Quick Stop
            },
          ),
          // Add more ListTile widgets for additional general stores
        ],
      ),
    );
  }
}

// Other classes for different ListPages (GeneralStoreListPage, StreetFoodListPage, etc.)
