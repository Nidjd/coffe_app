import 'package:coffe_app/manager/cubit/coffe_cubit.dart';
import 'package:coffe_app/models/coffe.dart';
import 'package:flutter/material.dart';

class ListTileCoffe extends StatelessWidget {
  final void Function()? onPressed;
  final Coffe coffe;
  const ListTileCoffe({
    super.key,
    required this.onPressed, required this.coffe,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(coffe.name),leading: Image.asset(coffe.imagePath),subtitle: Text(coffe.price),trailing: IconButton(onPressed: onPressed, icon: const Icon(Icons.add)),);
  }
}
