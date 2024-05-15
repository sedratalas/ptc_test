import 'package:flutter/material.dart';
import 'package:ptc_test/components/CustomButton.dart';
import 'package:ptc_test/Model/product.dart';

class AddProductDialog extends StatefulWidget {
  final Function(Product) onAddProduct;

  AddProductDialog({required this.onAddProduct});

  @override
  _AddProductDialogState createState() => _AddProductDialogState();
}

class _AddProductDialogState extends State<AddProductDialog> {
  final _formKey = GlobalKey<FormState>();
  String _title = '';
  String _subtitle = '';
  String _price = '';
  String _image = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        decoration: BoxDecoration(
          color: Color(0xffF2F3F2),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Add',
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xFF181725),
                        fontFamily: 'Poppins',
                    ),
                    ),
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
                TextFormField(

                  decoration: InputDecoration(labelText: 'Name',),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the product name';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _title = value!;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Description'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the product description';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _subtitle = value!;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Price'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the product price';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _price = value!;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Image'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the product image path';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _image = value!;
                  },
                ),
                SizedBox(height: 20),
                Center(
                  child: CustomButton(
                      text: 'Add Item',
                      onPressed:(){
                    if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    widget.onAddProduct(Product(
                      title: _title,
                      subtitle: _subtitle,
                      price: _price,
                      image: _image,
                    ));
                    Navigator.of(context).pop();
                  }} ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
