import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}


class _AddScreenState extends State<AddScreen> {

  final TextEditingController _productController = TextEditingController();
  final TextEditingController _storeController = TextEditingController();

  @override
  void dispose(){
    _productController.dispose();
    _storeController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Warranty'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _productController,
              decoration: InputDecoration(
                labelText: "Product Name * ",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              controller: _storeController,
              decoration: InputDecoration(
                labelText: "Store * ",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                // TODO : Proximo passo : validar e guardar
                final product = _productController.text.trim();
                final store = _storeController.text.trim();

                if(product.isEmpty || store.isEmpty){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Preencha todos os campos obrigatórios'))
                  );
                  return;
                }
                //TODO: Temporario ate implementar o guardar
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Dados Válidos'))
                );
              }, 
              child: Text('Add'),
              ),
          ],
        ),
      ),
    );
  }
}