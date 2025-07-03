import 'package:basketball_point_counter/cubit/counter_cubit.dart';
import 'package:basketball_point_counter/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() {
  runApp( _BasketballPoint());
}

// class BasketballPoint extends StatefulWidget {
//   const BasketballPoint({super.key});

//   @override
//   State<BasketballPoint> createState() => _BasketballPointState();
// }

class _BasketballPoint extends StatelessWidget {
  

  // int count1=0;
  // int count2=0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context)=>CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen()
      ),
    );
  }
}



class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit,CounterState>(builder:(context,state){

      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Points Counter",
          style: TextStyle(color: Colors.white,fontSize: 25),
          ),
        ),
        body: SizedBox(height: 900,
          child: Column(
            children: [
              SizedBox(height: 450,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 20),
                      child: Column(
                        children: [
                          Text("Team A",style: TextStyle(fontSize: 30),),
                          Text("${BlocProvider.of<CounterCubit>(context).teamAPiont}",style: TextStyle(fontSize: 160),),
                          ElevatedButton(onPressed: (){
                            BlocProvider.of<CounterCubit>(context).TeamIncreament(team: 'A', buttonNumber: 1);

                    
                            // setState(() {
                            //   count1++;
                           // });
                          },style: ElevatedButton.styleFrom(
                                 backgroundColor: Colors.orange, 
                           shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero, 
                       ),
                           ),
                           child: Text("Add 1 point",style: TextStyle(color: Colors.black),)
                           ),
                            Spacer(flex: 1,),
                            ElevatedButton(onPressed: (){
                              BlocProvider.of<CounterCubit>(context).TeamIncreament(team: 'A', buttonNumber: 2);

                              // setState(() {
                              //   count1+=2;
                              // });
                            },style: ElevatedButton.styleFrom(
                                 backgroundColor: Colors.orange, 
                           shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero, 
                       ),
                           ),
                           child: Text("Add 2 point",style: TextStyle(color: Colors.black),)
                           ),
                            Spacer(flex: 1,),
                            ElevatedButton(onPressed: (){
                              BlocProvider.of<CounterCubit>(context).TeamIncreament(team: 'A', buttonNumber: 3);

                              // setState(() {
                              //   count1+=3;
                              // });
                            },style: ElevatedButton.styleFrom(
                                 backgroundColor: Colors.orange, 
                           shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero, 
                       ),
                           ),
                           child: Text("Add 3 point",style: TextStyle(color: Colors.black),)
                           ),
                            Spacer(flex: 1,),
                      
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    SizedBox(height: 425,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: VerticalDivider(thickness: 1,),
                      )),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 20),
                        child: Column(
                          children: [
                            Text("Team B",style: TextStyle(fontSize: 30),),
                          Text("${BlocProvider.of<CounterCubit>(context).teamBPiont}",style: TextStyle(fontSize: 160),),
                          ElevatedButton(onPressed: (){
                            BlocProvider.of<CounterCubit>(context).TeamIncreament(team: 'B', buttonNumber: 1);

                            // setState(() {
                            //   count2++;
                            // });
                          },style: ElevatedButton.styleFrom(
                                 backgroundColor: Colors.orange, 
                           shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero, 
                                     ),
                           ),
                           child: Text("Add 1 point",style: TextStyle(color: Colors.black),)
                           ),
                           Spacer(flex: 1,),
                            ElevatedButton(onPressed: (){
                              BlocProvider.of<CounterCubit>(context).TeamIncreament(team: 'B', buttonNumber: 2);

                              // setState(() {
                              //   count2+=2;
                              // });
                            },style: ElevatedButton.styleFrom(
                                 backgroundColor: Colors.orange, 
                           shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero, 
                                     ),
                           ),
                           child:Text("Add 2 point", style: TextStyle(color: Colors.black)),
                           //setState Text("Add 2 point",style: TextStyle(color: Colors.black),)
                           ),
                            Spacer(flex: 1,),
                            ElevatedButton(onPressed: (){
                              BlocProvider.of<CounterCubit>(context).TeamIncreament(team: 'A', buttonNumber: 3);

                              // (() {
                              //   count2+=3;
                              // });
                            },style: ElevatedButton.styleFrom(
                                 backgroundColor: Colors.orange, 
                           shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero, 
                                     ),
                           ),
                           child: Text("Add 3 point",style: TextStyle(color: Colors.black),)
                           ),
                         Spacer(flex: 1,),
                          ],
                        ),
                      )
                  ],
                ),
              ),
              SizedBox(height: 60,),
              ElevatedButton(onPressed: (){
                // setState(() {
                //   count1=0;
                //   count2=0;
                // });
              },
              style: ElevatedButton.styleFrom(
                               backgroundColor: Colors.orange, 
                        shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(20), 
                      ),
                     minimumSize: Size(150, 40),
                         ),
                          child: Text("Restart",style: TextStyle(color: Colors.black),))
            ],
          
          ),
        ),
         
      );
    },listener:(context,state){
      if(state is CounterAIncrementState){
       
      }else{
        
      }
    });
  }
}