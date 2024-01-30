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
        primarySwatch: Colors.blueGrey, // Use primarySwatch instead of colorScheme
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blueGrey, // Set the AppBar background color
        ),
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
        title: Text(title),
        actions: [
          SearchBar(
            onSearch: (query) {
              // Implement search logic here
              // You may want to filter and update the displayed list based on the search query
            },
          ),
        ],
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
              // Add more dashboard items
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

class SearchBar extends StatefulWidget {
  final Function(String) onSearch;

  const SearchBar({Key? key, required this.onSearch}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _searchController,
        onChanged: (query) {
          widget.onSearch(query);
        },
        decoration: InputDecoration(
          hintText: 'Search...',
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}

class RestaurantListPage extends StatelessWidget {
  // ... existing code ...

  @override
  Widget build(BuildContext context) {
    // ... existing code with search functionality ...
  }
}

class GeneralStoreListPage extends StatelessWidget {
  // ... existing code ...

  @override
  Widget build(BuildContext context) {
    // ... existing code with search functionality ...
  }
}
