
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState()=>
     _CurrencyConverterMaterialPageState();
}
class _CurrencyConverterMaterialPageState 
    extends State<CurrencyConverterMaterialPage>{
    double result = 0;
    final TextEditingController textEditingController=TextEditingController();
    void convert(){
      result =double.parse(textEditingController.text)*80;
      setState((){});
    }

  @override
  Widget build(BuildContext context) {
    
    
    
    final border = OutlineInputBorder(
                  borderSide: const BorderSide(
                    width:1.5,
                    style: BorderStyle.solid,
                     ),
                     borderRadius: BorderRadius.circular(50),
                    );
    return Scaffold(
      appBar: AppBar(
        title:  const Text(


          "USD to INR",

          style:  TextStyle(
          fontSize: 20)
          ),
        shadowColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 10,
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Center(
           child :Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
             Text(
              "₹ ${result !=0 ? result.toStringAsFixed(3): result.toStringAsFixed(0)}",
                  style: const TextStyle(
                    fontSize: 30,
                    color:  Color.fromRGBO(194, 127, 207, 1), 
                    fontWeight: FontWeight.w600,
                    ), 
                 ),
              Padding(  
                padding: const EdgeInsets.fromLTRB(10, 10, 10,5),
                //margin: const EdgeInsets.all(25.0),
                child: TextField(
                  controller: textEditingController,
                style: const TextStyle(
                  
                  fontSize: 15,
                  color: Color.fromARGB(255, 0, 54, 85),
                  ),
                  decoration: InputDecoration(
                    
                  hintText: 'Please enter the amount -', //input in Dollar
                 
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 227, 216, 232),
                  ),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor:const Color.fromARGB(179, 114, 110, 110),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                  focusedBorder: border,
                  enabledBorder: border,
                  
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  
                
                ),
              ),



             Padding(
               padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
               child: SizedBox(
                
                 child: ElevatedButton(  
                       
                  onPressed: convert,
                  style:  ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 192, 71, 183),
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    maximumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text("Convert",
                  style: TextStyle( 
                  fontSize: 17,

                  ),
                  ),
                  
                  
                  
                  ),
               ),
             )

            ],
          ),
        )
       
    );
  }
  }



