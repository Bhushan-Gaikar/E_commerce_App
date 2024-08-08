import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakertute/components/shoe_tile.dart';
import 'package:sneakertute/models/cart.dart';
import 'package:sneakertute/models/shoe.dart';

import '../components/bottom_nav_bar.dart';
import '../provider/tab_provider.dart';
import 'cart_page.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  MyBottomNavBar? navbar;
  void addShoeToCart(Shoe shoe, BuildContext context){
    
    Provider.of<Cart>(context,listen: false).addItemToCart(shoe);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Item Added In Cart'),
      action: SnackBarAction(
          label: "View Cart",
          onPressed: (){
            Provider.of<TabProvider>(context,listen: false).changeTab(2);
          }),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder:(context,value,child)=> Column(
          children: [
            //search bar
            Container(
                padding: const EdgeInsets.all(12),
                margin:const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Search',style: TextStyle(color: Colors.grey),),
                    Icon(Icons.search,color: Colors.grey,)
                  ],
                ),
            ),

            //message

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Text('Everyone flies.. some fly longer than others',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),


            //hot picks

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const[
                  Text('Hot Picks ',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 24)),
                  Text('See all',style:TextStyle(color: Colors.blue)),
                ],
              ),
            ),

            const SizedBox(height:10),

            Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    Shoe shoe = value.getShoeList()[index];

                    return ShoeTile(
                      shoe: shoe,
                      onTap: () => addShoeToCart(shoe,context),
                    );
                  }),

            ),
            const Padding(
              padding: EdgeInsets.only(top: 25.0 ,left:25.0, right: 25.0 ),
              child: Divider(
                color: Colors.white,
              ),
            ),
          ],
        ),

    );
  }
}
