import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
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
            ElevatedButton(
              onPressed: () {
                // Navigate to the restaurant list page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RestaurantListPage()),
                );
              },
              child: Text('View Restaurants'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Navigate to the general store list page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GeneralStoreListPage()),
                );
              },
              child: Text('View General Stores'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Navigate to the departmental store list page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DepartmentalStoreListPage()),
                );
              },
              child: Text('View Departmental Stores'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Navigate to the street food list page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StreetFoodListPage()),
                );
              },
              child: Text('View Street food'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Navigate to the dairy store list page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DairyListPage()),
                );
              },
              child: Text('View Dairy'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Navigate to the greengrocer food list page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GreenGrocersListPage()),
                );
              },
              child: Text('View green grocers'),
            ),
          ],
        ),
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
}
// this is where general store starts
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


