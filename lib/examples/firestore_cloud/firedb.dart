import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'app',
      home: FireDB(),
    );
  }
}

class FireDB extends StatefulWidget {
  const FireDB({super.key});

  @override
  State<FireDB> createState() => _FireDBState();
}

class _FireDBState extends State<FireDB> {

final TextEditingController _nameController = TextEditingController();
final TextEditingController _priceController = TextEditingController();
final CollectionReference _products = FirebaseFirestore.instance.collection('products');

Future<void> _createOrUpdate([DocumentSnapshot?documentSnapshot])async{

  String action = 'create';
  if(documentSnapshot != null){
    action = 'update';
    _nameController.text = documentSnapshot['name'];
    _priceController.text = documentSnapshot['price'].toString();
  }
  await showModalBottomSheet(
      isScrollControlled: true,
      context: context, builder: (BuildContext ctx){
        return Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 20,
              right:20,
              bottom: MediaQuery.of(ctx).viewInsets.bottom+20),
        child: Column(mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextField(keyboardType: const TextInputType.numberWithOptions(decimal: true),
            controller: _priceController,
            decoration: const InputDecoration(labelText: 'Price',
            ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(child: Text(action == 'create'?'Create':'Update'),
              onPressed: ()async{
              final String? name= _nameController.text;
              final double? price = double.tryParse(_priceController.text);
              if(name != null && price != null){
                if(action == 'create'){
                  await _products.add({'name':name,'price':price});
                }

                if (action == 'update') {
                  await _products
                      .doc(documentSnapshot!.id)
                      .update({"name": name, "price": price});
                }

                _nameController.text = '';
                _priceController.text = '';

                Navigator.of(context).pop();

              }
              },
            ),
          ],
        ),
        );
     }
  );
}

Future<void> _deleteProduct(String productId) async {
  await _products.doc(productId).delete();

  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('You have successfully deleted a product')));
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text(''),
    ),
    body: StreamBuilder(
      stream: _products.snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
        if (streamSnapshot.hasData) {
          return ListView.builder(
            itemCount: streamSnapshot.data!.docs.length,
            itemBuilder: (context, index) {
              final DocumentSnapshot documentSnapshot =
              streamSnapshot.data!.docs[index];
              return Card(
                margin: const EdgeInsets.all(10),
                child: ListTile(
                  title: Text(documentSnapshot['name']),
                  subtitle: Text(documentSnapshot['price'].toString()),
                  trailing: SizedBox(
                    width: 100,
                    child: Row(
                      children: [
                        IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () =>
                                _createOrUpdate(documentSnapshot)),
                        IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () =>
                                _deleteProduct(documentSnapshot.id)),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    ),
    // Add new product
    floatingActionButton: FloatingActionButton(
      onPressed: () => _createOrUpdate(),
      child: const Icon(Icons.add),
    ),
  );
}
}

