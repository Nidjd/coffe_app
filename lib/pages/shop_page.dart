import 'package:coffe_app/componentes/list_tile_coffe.dart';
import 'package:coffe_app/manager/cubit/coffe_cubit.dart';
import 'package:coffe_app/models/coffe.dart';
import 'package:coffe_app/models/coffe_shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: BlocConsumer<CoffeCubit, CoffeState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Column(
              children: [
                const Text(
                  'How would you like your coffe ?',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 25,
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) => Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 25),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            12,
                          ),
                        ),
                      ),
                      margin: const EdgeInsets.only(bottom: 10),
                      child: ListTileCoffe(
                        onPressed: () {
                          BlocProvider.of<CoffeCubit>(context).addItemToTheCart(
                            BlocProvider.of<CoffeCubit>(context)
                                .coffeShop[index],
                          );
                        },
                        coffe: BlocProvider.of<CoffeCubit>(context)
                            .coffeShop[index],
                      ),
                    ),
                    itemCount:
                        BlocProvider.of<CoffeCubit>(context).coffeShop.length,
                  ),
                )
              ],
            );
          },
        ),
      )),
    );
  }
}
