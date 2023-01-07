

import 'dart:collection';

import 'package:dart_advanced/dart_advanced.dart' as dart_advanced;

void main() {
  print("Dart list Everythig");

  //**************************** LIST *********************
  print('                  LIST \n');
  //method 1:use integer type
  List<int> roll=[];//use generic/semiler data use list.this list support by int.and onther data type not support.
  roll.add(10); //data added by single
  roll.add(20);
  roll.add(30);
  roll.addAll([40,50]); //add multiple data
  roll.insert(5, 60); //data added for index fixed=data
  roll.insertAll(6,[70,80] ); //data added for multiple data
  roll.remove(10); //data remove by item/value
  roll.removeAt(2); //data remove by fixed index number
  print(roll);
  //string type data
  List<String> name = ['pervez','hasan'];
  name.add("khan");
  name.add("labli");
  name.add("lebu");
  name.add("luhan");
  name.add("Rafi");
  name.remove("labli"); //data remove
  name.replaceRange(2, 3, ["Luky"]); //data replace (own index number is start)
  name.replaceRange(4, 6,['mia','babu']);// data replace multiple
  print(name);
  //list use for loop
  var name_serial;
  for(name_serial in name){ // name variable all data come in name_serial
    print(name_serial);
  }

  //method 2:
  //fixed list intiger data: 5=end,0=start,growable=false;
  var mylist =List<int>.filled(5,0, growable: false);
  mylist[0]=0;
  mylist[1]=10;
  mylist[2]=20;
  mylist[3]=30;
  mylist[4]=40;
  print(mylist);

  //Growable list:data add is a unlimited.
  var grolist=List<int>.filled(0,0,growable: true);
  grolist =[10, 20,30,40 ,50, 60, 70, 80, 90, 100];
  print(grolist);



  //**************************************** MAP ********************
  print('                   MAP START\n');
  //MAP:map is use a key and store the value (map=key semiller work in a index,list=direct index)
  //map create by literal
  var details={
    'username':"Perez",
    'passwad' :"per123"
    };
  details['account status']="Invalid"; //data added in runtime
  print(details);
  print(['username']); // data print by key specific value

  //map create by constructor
  var map= new Map();
  map['name']="Pervez";
  map['age']="21";
  map['hight']="5.6";
  map.addAll({"name":'Pervez',"roll":'90'}); //when multiple data added
  //map.clear();=all data deleted
  map.remove('hight');//specific key value remove

  print(map);//all data print
  print(map['age']); //specific key value print
  print(map.keys); //map key return
  print(map.values); //map values return
  print(map.length); //map length shows

  //*************************** SET *************************
  print('                   SET \n');
  //list and set is a exactly same but set is a skip/not store duplicate value
  //method1:
  var myset=new Set();//crate a object set class
  myset.add(100);
  myset.add(200);
  myset.add(300);
  myset.add(200);//duplicate value is ignore
  myset.add(500);
  print(myset);

  //method2:
  var set=new Set.from([10,20,30,40,50]);
  print(set);

  //set into use for loop
  var sets=new Set.from([2,25,20,520,2]);
  var myvalue;
  for(myvalue in sets){ //**** sets variable all data come in myvalue
    print(myvalue);
  }

  
  //*********************** HASH MAP *****************************
  //hashmap and list same.but data not serially
  print('                  HASH MAP \n');
  var hashmap=new HashMap();
  hashmap['name']="Pervez";
  hashmap['age']="21";
  hashmap['roll']="902796";
  hashmap['reg']="897188";

  print(hashmap);
  print(hashmap['name']); //key specific value
  print(hashmap.keys); //key
  print(hashmap.values); //see value
  //*** hashmap and list do all method support
  hashmap.remove('reg');
  //use for loop
  var myvalues;
  for(myvalues in hashmap.values){ //for loop use by hash values

    print(myvalues);
  }

  for(myvalues in hashmap.keys){ //for loop use by hash keys

    print(myvalues);
  }

  //*********************************************** Hashset ***********************
  //hash set value is ignore
  print('                  HASH SET \n');
  var hashset =new HashSet();
  hashset.add('pervez');
  hashset.add('hasan');
  hashset.add('khan'); //data add
  hashset.addAll(['hasan','jaman','nila']); //data add by multiple and ignore dublicate value
  hashset.remove('jaman');
  print(hashset);

  //use for loop
  var values;
  for(values in hashset){
    print(values);

  }

}
