import 'package:flutter/material.dart';

class FlashMessage extends StatefulWidget {
  const FlashMessage({super.key});

  @override
  State<FlashMessage> createState() => _FlashMessageState();
}

class _FlashMessageState extends State<FlashMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Stack(
                      clipBehavior: Clip.none,
                      children: [
                         Container(
                          padding: EdgeInsets.all(16),
                          child: Row(
                            children: [
                              const SizedBox(width: 48,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Success", style: TextStyle(fontSize: 18, color: Colors.white)),
                                    Spacer(),
                                    Text("Snackbar success message is showing...", style: TextStyle(fontSize: 12, color: Colors.white), maxLines: 2, overflow: TextOverflow.ellipsis,)
                                  ],
                                )
                              )
                            ],
                          ),
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.green[700],
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                         ),
                         Positioned(
                          left: 20,
                          top: 30,
                          child: Icon(
                            Icons.circle,
                            size: 24,
                            color: Colors.green[900],
                          ),
                         ),

                         Positioned(
                          left: 0,
                          top: -20,
                          child: Icon(
                            Icons.circle,
                            size: 40,
                            color: Colors.green[900],
                          ),
                         ),

                         Positioned(
                          left: 8,
                          top: -12,
                          child: Icon(
                            Icons.close,
                            size: 24,
                            color: Colors.white,
                          ),
                         )
                         
                      ],
                    ),
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                );
              }, 
              child: Text("Show Success Message")
            ),

             ElevatedButton(
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Stack(
                      clipBehavior: Clip.none,
                      children: [
                         Container(
                          padding: EdgeInsets.all(16),
                          child: Row(
                            children: [
                              const SizedBox(width: 48,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Error", style: TextStyle(fontSize: 18, color: Colors.white)),
                                    Spacer(),
                                    Text("Snackbar error message is showing...", style: TextStyle(fontSize: 12, color: Colors.white), maxLines: 2, overflow: TextOverflow.ellipsis,)
                                  ],
                                )
                              )
                            ],
                          ),
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.red[700],
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                         ),
                         Positioned(
                          left: 20,
                          top: 30,
                          child: Icon(
                            Icons.circle,
                            size: 24,
                            color: Colors.red[900],
                          ),
                         ),

                         Positioned(
                          left: 0,
                          top: -20,
                          child: Icon(
                            Icons.circle,
                            size: 40,
                            color: Colors.red[900],
                          ),
                         ),

                         Positioned(
                          left: 8,
                          top: -12,
                          child: Icon(
                            Icons.close,
                            size: 24,
                            color: Colors.white,
                          ),
                         )
                         
                      ],
                    ),
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                );
              }, 
              child: Text("Show Error Message")
            ),


             ElevatedButton(
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Stack(
                      clipBehavior: Clip.none,
                      children: [
                         Container(
                          padding: EdgeInsets.all(16),
                          child: Row(
                            children: [
                              const SizedBox(width: 48,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Warning", style: TextStyle(fontSize: 18, color: Colors.white)),
                                    Spacer(),
                                    Text("Snackbar warning message is showing...", style: TextStyle(fontSize: 12, color: Colors.white), maxLines: 2, overflow: TextOverflow.ellipsis,)
                                  ],
                                )
                              )
                            ],
                          ),
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.yellow[700],
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                         ),
                         Positioned(
                          left: 20,
                          top: 30,
                          child: Icon(
                            Icons.circle,
                            size: 24,
                            color: Colors.yellow[900],
                          ),
                         ),

                         Positioned(
                          left: 0,
                          top: -20,
                          child: Icon(
                            Icons.circle,
                            size: 40,
                            color: Colors.yellow[900],
                          ),
                         ),

                         Positioned(
                          left: 8,
                          top: -12,
                          child: Icon(
                            Icons.close,
                            size: 24,
                            color: Colors.white,
                          ),
                         )
                         
                      ],
                    ),
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                );
              }, 
              child: Text("Show Warning Message")
            )
          ],
        ),
      ),
    );
  }
}