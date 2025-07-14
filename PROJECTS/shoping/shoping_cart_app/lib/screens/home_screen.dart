import 'package:flutter/material.dart';
import '../models/items.dart';
import '../services/api_service.dart';
import 'add_item_screen.dart';
import 'edit_item_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Item>> _items;

  @override
  void initState() {
    super.initState();
    _items = ApiService.getItems();
  }

  void _refresh() {
    setState(() {
      _items = ApiService.getItems();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("🛒 My Shopping List")),
      body: FutureBuilder(
        future: _items,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text("❌ Failed to load items"));
          } else {
            final items = snapshot.data!;
            if (items.isEmpty) return const Center(child: Text("No items yet"));

            return ListView.builder(
              itemCount: items.length,
              itemBuilder: (ctx, index) {
                final item = items[index];
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text(
                    "Category: ${item.category}\nQty: ${item.quantity} | Price: ₹${item.price}",
                  ),
                  isThreeLine: true,
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => EditItemScreen(item: item),
                            ),
                          );
                          _refresh();
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () async {
                          await ApiService.deleteItem(item.id);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Item has been Deleted !!"),
                              backgroundColor: Colors.redAccent,
                            ),
                          );
                          _refresh();
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
      // floatingActionButton: Row(
      //   mainAxisAlignment: MainAxisAlignment.end, // aligns to the right
      //   mainAxisSize: MainAxisSize.min,
      //   children: [
      //     FloatingActionButton(
      //       heroTag: "btn1",
      //       onPressed: () {
      //         print("Add");
      //       },
      //       child: const Icon(Icons.add),
      //       tooltip: "Add Item",
      //     ),
      //     const SizedBox(width: 10),
      //     FloatingActionButton(
      //       heroTag: "btn2",
      //       onPressed: () {
      //         print("Refresh");
      //       },
      //       child: const Icon(Icons.refresh),
      //       tooltip: "Refresh",
      //     ),
      //     const SizedBox(width: 10),
      //     FloatingActionButton(
      //       heroTag: "btn3",
      //       onPressed: () {
      //         print("Search");
      //       },
      //       child: const Icon(Icons.search),
      //       tooltip: "Search",
      //     ),
      //   ],
      // ),
      // -----
      floatingActionButton: Column(
  mainAxisSize: MainAxisSize.min,
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    FloatingActionButton(
      heroTag: "btn1",
      onPressed: () {
        // Add Item
        Navigator.push(context, MaterialPageRoute(builder: (_) => const AddItemScreen()));
      },
      child: const Icon(Icons.add),
      tooltip: "Add Item",
    ),
    const SizedBox(height: 12),
    FloatingActionButton(
      heroTag: "btn2",
      onPressed: () {
        // Example action: sort or refresh
        _refresh();
      },
      child: const Icon(Icons.refresh),
      tooltip: "Refresh",
    ),
    const SizedBox(height: 12),
    FloatingActionButton(
      heroTag: "btn3",
      onPressed: () {
        // Example: Search or filter
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Search not implemented")),
        );
      },
      child: const Icon(Icons.search),
      tooltip: "Search",
    ),
  ],
),

// ---

      // FloatingActionButton(
      //   onPressed: () async {
      //     await Navigator.push(
      //       context,
      //       MaterialPageRoute(builder: (_) => const AddItemScreen()),
      //     );
      //     _refresh();
      //   },
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
