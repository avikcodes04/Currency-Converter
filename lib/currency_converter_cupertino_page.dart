import 'package:flutter/cupertino.dart';



class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
 extends State<CurrencyConverterCupertinoPage> {
  double result = 0;


    final TextEditingController textEditingController=TextEditingController();
    void convert(){
      result =double.parse(textEditingController.text)*83.52;
       setState((){});
    }
  @override
  Widget build(BuildContext context)  {
    
    
    
    
    return CupertinoPageScaffold(
      
         backgroundColor: const Color.fromARGB(255, 245, 245, 220),
      navigationBar: const CupertinoNavigationBar(
        middle:   Text(
          "USD to INR",
          style:  TextStyle(
          fontSize: 20)
          ),
          backgroundColor: Color.fromARGB(255, 192, 192, 209),
       
      ),
      
        
        child: Center(
          
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
                child: CupertinoTextField(
                  controller: textEditingController,
                  style: const TextStyle(
                  
                  fontSize: 15,
                  color: Color.fromARGB(255, 0, 54, 85),
                  ),
                  decoration:  BoxDecoration(
                    color: CupertinoColors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5)
                    

                 ),
                 placeholder: "Please enter the amount in USD",
                 placeholderStyle: const TextStyle(
                  color: Color.fromARGB(255, 174, 174, 174)
                 ),
                 prefix: const Icon(CupertinoIcons.money_dollar) ,


                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  
                
                ),
              ),



             Padding(
               padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
               child: SizedBox(
                
                 child: CupertinoButton(  
                       
                  onPressed: convert,
                  color: const Color.fromARGB(255, 168, 63, 189),
                  
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
// heeeeeeeeee