import 'package:flutter/material.dart';
import 'package:homeflaw/datamodels/product_datamodel.dart';
import 'package:homeflaw/provider/bookmarksProvider.dart';
import 'package:homeflaw/screens/product_screen.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatefulWidget {
   ProductCard({ Key? key ,this.product}) : super(key: key);
  Product? product;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
 
  @override
  Widget build(BuildContext context) {
    var listofBookmarks = Provider.of<BookmarksProvider>(context).listofBookmarks;
 
    return InkWell(
      onTap: () {
         Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductScreen(
              product: widget.product,
            ),
          ),
        );
      },
      child: Stack(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                 widget.product!.imgUrl != "null" ?Image.network("${widget.product!.imgUrl}",fit: BoxFit.fill):  Image.network("https://www.onmanorama.com/content/dam/mm/en/lifestyle/decor/images/2022/1/27/4-cent-trivandrum-home-view.jpg.transform/onm-articleimage/image.jpg",fit: BoxFit.fill) ,
                 SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${widget.product!.title}',
                        style:const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${widget.product!.propertyType}',
                        style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                        ),
                      ), ],
                    
                  ),
                     SizedBox(height: 20,),
                        Row(
                  
                         
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Icon(Icons.location_on, color:Colors.grey),
                                  Text( '${widget.product!.location}', style: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w800,
                                            ),),
                                ],
                              ),
                            ),
    
                            Expanded(
                              flex: 1,
                              child: Row( 
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                              Row(
                                children: [
                                  Icon(Icons.crop_square_rounded, color:Colors.grey ,),
                                  Text( '${widget.product!.area}  m2', style: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w800,
                                            ),),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.bed, color:Colors.grey),
                                  Text('${widget.product!.bedrooms}', style: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w800,
                                            ),),
                                ],
                              ),
                                
                                  Row(
                                    children: [
                                      Icon(Icons.bathtub, color:Colors.grey),
                                      Text('${widget.product!.baths}', style: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w800,
                                            ),),
                                    ],
                                  ),
                                              ],
                                            ),
                            ),],),
                        SizedBox(height: 20,),
                        Text('\$${widget.product!.price}',style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),),
                   
                  
      
                    
                ],
                
    
              ),
            ),
            
          ),
          Positioned(
            top: 25,
            left: 25,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.all(
                Radius.circular(2),
                
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'FOR ${widget.product!.sellOrRentType!.toUpperCase()}',
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
           Positioned(
            top: 15,
            right: 25,
            child: InkWell(
              
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(onPressed: () {
                  if (listofBookmarks.contains(widget.product)) {
                   Provider.of<BookmarksProvider>(context,listen: false).removeProduct(widget.product!);
                  } else {
                     Provider.of<BookmarksProvider>(context, listen: false).addProduct(widget.product!);
                     print("++++++++++++++");
                  }
       
               
                    //
                }, icon: listofBookmarks.contains(widget.product) ? Icon( Icons.favorite, color: Colors.red ): Icon( Icons.favorite_border ,color: Colors.white )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}