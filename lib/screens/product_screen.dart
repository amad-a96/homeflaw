import 'package:flutter/material.dart';
import 'package:homeflaw/datamodels/product_datamodel.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductScreen extends StatefulWidget {
   ProductScreen({ Key? key ,   this.product}) : super(key: key);
   Product? product;
  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.transparent,elevation: 0,iconTheme: IconThemeData(color: Colors.black),),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
          widget.product!.imgUrl != "null" ?Image.network("${widget.product!.imgUrl}",fit: BoxFit.fill):  Image.network("https://www.onmanorama.com/content/dam/mm/en/lifestyle/decor/images/2022/1/27/4-cent-trivandrum-home-view.jpg.transform/onm-articleimage/image.jpg",fit: BoxFit.fill) ,
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$${widget.product!.price}',
                        style:const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'FOR ${widget.product!.sellOrRentType!.toUpperCase()}',
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                        ),
                      ), ],
                    
                  ),
                ),
                   SizedBox(height: 20,),
                      Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            Row(
                        children: [
                          Icon(Icons.kitchen, color:Colors.grey ,),
                          Text( '${widget.product!.kitchens}', style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800,
                                    ),),
                                    
                        ],
                      ),
                                      ],
                                    ),
                                    Divider(height: 20,),

                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        '${widget.product!.propertyType}',
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Icon(Icons.location_on, color:Colors.grey,),
                                          Text(
                                            '${widget.product!.location}',
                                            style: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    //call
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ElevatedButton(onPressed: () {
                                        _launchURL(widget.product!.phoneNumber!);
                                      }, child: Text('Call'),),
                                    ),
              ],
            ),
          ),
          
        ],
      ),
      
    );
  }

  _launchURL(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    } else {
      throw 'Could not launch $launchUri';
    }
  }
}
