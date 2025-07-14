import 'package:flutter/material.dart';
import '../models/items.dart';
import '../services/api_service.dart';

class AddItemScreen extends StatefulWidget {
  const AddItemScreen({super.key});

  @override
  State<AddItemScreen> createState() => _AddItemScreenState();
}

class _AddItemScreenState extends State<AddItemScreen> {
  final _nameController = TextEditingController();
  final _quantityController = TextEditingController();
  final _priceController = TextEditingController();
  final List<String> _categories = ['Shirts', 'Pants', 'T-Shirts', 'Others'];
  String _selectedCategory = 'Shirts';

  void _submit() async {
    final name = _nameController.text.trim();
    final quantity = int.tryParse(_quantityController.text.trim());
    final price = int.tryParse(_priceController.text.trim());

    if (name.isEmpty || quantity == null || price == null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("❗ Enter valid data")));
      return;
    }

    final newItem = Item(
      id: '',
      name: name,
      category: _selectedCategory,
      quantity: quantity,
      price: price,
    );

    await ApiService.addItem(newItem);
    Navigator.pop(context);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Data has been Added !!"),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("➕ Add New Item")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: "Item Name"),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _quantityController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Quantity"),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _priceController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Price (₹)"),
            ),
            const SizedBox(height: 10),
            DropdownButton<String>(
              value: _selectedCategory,
              items: _categories.map((cat) {
                return DropdownMenuItem(value: cat, child: Text(cat));
              }).toList(),
              onChanged: (value) => setState(() => _selectedCategory = value!),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: _submit, child: const Text("Add Item")),
          ],
        ),
      ),
    );
  }
}
