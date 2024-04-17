import 'package:coffe_app/componentes/list_tile_coffe.dart';
import 'package:coffe_app/manager/cubit/coffe_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    var eachCoffe = BlocProvider.of<CoffeCubit>(context).userCart;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: BlocConsumer<CoffeCubit, CoffeState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Column(
              children: [
                const Text(
                  'Your Cart',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 25.0,
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
                          BlocProvider.of<CoffeCubit>(context).removeItemInCart(
                            eachCoffe[index],
                          );
                        },
                        coffe: eachCoffe[index],
                        icon: const Icon(Icons.remove),
                      ),
                    ),
                    itemCount:
                        BlocProvider.of<CoffeCubit>(context).userCart.length,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      minimumSize:
                          MaterialStatePropertyAll(Size(double.infinity, 55)),
                      backgroundColor: MaterialStatePropertyAll(Colors.brown)),
                  child: const Text(
                    "Pay Now",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
