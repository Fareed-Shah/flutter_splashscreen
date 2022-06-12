import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
 TextEditingController addTextcontroller =  TextEditingController();
 List<String> chatnames = ['Fareed','Navee'];

 addchat(){
  setState(() {
  chatnames.add(addTextcontroller.text);  
  addTextcontroller.clear();
  }); 
 }

 deleteItem(i){
  
  setState(() {
    chatnames.removeAt(i);
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(                        
      body:  Column(                 
        children: [
          SizedBox(width: MediaQuery.of(context).size.width*0.7,child: TextField(
            controller: addTextcontroller,
          ),) ,
          ElevatedButton(onPressed: (){ 
          addchat();
          }, child: Text('Add')),
          
          Expanded(
            child: ListView.builder(
              itemCount: chatnames.length,
              itemBuilder: (BuildContext context,index){
                return ListTile(       
                  tileColor: Colors.grey,     
                  title:Text(chatnames[index]),trailing:  ElevatedButton(onPressed: (){ 
                  deleteItem(index);
               }, child: Text('delete')),
              );
              }
              ),
          ),
        ],
      ),
    );
  }
    
  }
  

  
  
 
