import 'package:flutter/material.dart';
import '../models/items.dart';
import '../services/api_service.dart';

class EditItemScreen extends StatefulWidget {
  final Item item;
  const EditItemScreen({super.key, required this.item});

  @override
  State<EditItemScreen> createState() => _EditItemScreenState();
}

class _EditItemScreenState extends State<EditItemScreen> {
  late TextEditingController _nameController;
  late TextEditingController _quantityController;
  late TextEditingController _priceController;
  late String _selectedCategory;

  final List<String> _categories = ['Shirts', 'Pants', 'T-Shirts', 'Others'];
  int total_price = 0;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.item.name);
    _quantityController = TextEditingController(
      text: widget.item.quantity.toString(),
    );
    _priceController = TextEditingController(
      text: widget.item.price.toString(),
    );
    _selectedCategory = widget.item.category;
    if (!_categories.contains(_selectedCategory)) {
      _categories.add(_selectedCategory);
    }
    _calculate_total();
    _quantityController.addListener(_calculate_total);
    _priceController.addListener(_calculate_total);
  }

  void _calculate_total() {
    final qty = int.tryParse(_quantityController.text.trim()) ?? 0;
    final prc = int.tryParse(_priceController.text.trim()) ?? 0;
    setState(() {
      total_price = qty * prc;
    });
  }

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

    final updatedItem = Item(
      id: widget.item.id,
      name: name,
      category: _selectedCategory,
      quantity: quantity,
      price: price,
    );

    await ApiService.updateItem(widget.item.id, updatedItem);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Data Has been update !!"),
        backgroundColor: Colors.indigo,
      ),
    );
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("✏️ Edit Item")),
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
            ElevatedButton(
              onPressed: _submit,
              child: const Text("Update Item"),
            ),
          ],
        ),
      ),
    );
  }
}
