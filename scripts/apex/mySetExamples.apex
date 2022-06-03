//set related collections

Set<String> strSet = new Set<String>();

strSet.add('Snacks');
strSet.add('Chocos');
strSet.add('Soft Drink');
strSet.add('USB Port Cable');
strSet.add('Cleaning Stuff');
strSet.add('Gift Wrapper');

system.debug('###:: ' + strSet);

//Dublicate
Set<Integer> intSet = new set<Integer>{21,15,21,15,40,21,75,12,7,9,3,2,68};
System.debug('@@@::: Values in set:::: ' + intSet);
intSet.add(65);
System.debug('@@@::: Values in set:::: ' + intSet);

//Contains example
Set<String> strSet = new Set<String>{'Apple', 'Orange', 'Cherry', 'Grapes', 'Mangoes'};
Boolean boolVar1 =  strSet.contains('Mangoes');
System.debug('###:::Checking contains function '+boolVar1);
Boolean boolVar2 =  strSet.contains('Kiwi');
System.debug('###:::Checking contains function '+boolVar2);

// equals() example
Set<String> frtsSet = new Set<String>{'Apple', 'Orange', 'Cherry', 'Grapes', 'Mangoes'};
Set<String> frtsSet_new = new Set<String>{'Apple', 'Orange', 'Cherry', 'Grapes', 'Mangoes', 'Durian'};
Boolean boolVal =  frtsSet_new.equals(frtsSet);
System.debug('@@@@@:::boolVal:::: ' + boolVal);

//Is Empty() Example
Set<String> strSet = new Set<String>();

if(strSet.isEmpty()){
  system.debug('My Set is Empty:::');
}else{
  system.debug('My Set is Not Empty:::');
}

Set<String> strSet1 = new Set<String>();
strSet1.add('Halloo');
if(strSet1.size()>0 && !strSet1.isEmpty()){
  system.debug('My Set is Not Empty 2:::');
  system.debug('It has ' + strSet1.size() + ' items');
}else{
  system.debug('My Set is Empty:2::');
}

//clone() example


Set<String> frtsSet = new Set<String>{'Apple', 'Orange', 'Cherry', 'Grapes', 'Mangoes'};
Set<String> frtsSet1 = new Set<String>();
frtsSet1 = frtsSet.clone();
frtsSet1.add('Kiwi');
frtsSet1.add('kiwi');
frtsSet1.add('KiWi');
system.debug('New set-----> ' + frtsSet1);

//MAPS EXAMPLES

Key - Value
EMP-001 Esma
EMP -004 Aykut

EMP-00 Istanbul
EMP -006 Istanbul
EMP-009 Kars

//syntax of map
// key value
Map<String,Integer> mpSal = new Map<String,Integer>();

Map<String,String> mpEmp = new Map<String,String>();        //Instance of MAP
mpEmp.put('EMP-0001', 'Istanbul');           // adding out data into MAP
system.debug('@@@ My MAP DATA:::::'+mpEmp);     //print the values
mpEmp.put('EMP-0006', 'Istanbul');              //*******Keys are unique but not Values
system.debug('@@@ My MAP DATA:::2::'+mpEmp);
mpEmp.put('EMP-0009', 'Kars');
system.debug('@@@ My MAP DATA:::3::'+mpEmp);
mpEmp.put('EMP-0001', 'INQ');
system.debug('@@@ My MAP DATA:::4::'+mpEmp);


Map<Integer,String> myMap = new Map<Integer,String>();
myMap.put('Hello', ' World'); // IT WILL GIVE AN ERROR - SINCE DATA TYPE NEED TO BE Integer in KEY
System.debug('@@@@:::'+myMap);


List<String> lstFrt = new List<String>{'Apple','Kiwi','Mangoes','JackFruit','Durian'};
List<String> lstLoc = new List<String>{'USA','UK','AUSTRALIA','ASIA','AFRICA'};
Map<String,List<String>> mpVal = new Map<String,List<String>>();
mpVal.put('Fruits',lstFrt);
System.debug('###::::my MAP DATA::FRUITS:::'+mpVal);
mpVal.put('Locations',lstLoc);
System.debug('###::::my MAP DATA::::WITH FRUITS AND LOCATIONS:::::'+mpVal);

List<String> lstFrt = new List<String>{'Esma','Kiwi','Mangoes','JackFruit','Durian'};

Map<String,String> mapVal = new Map<String,String>();
mapVal.put('EMP-0003','Esma');
Boolean bolVal = mapVal.containsKey('EMP-0001');
if(bolVal){
    system.debug('@@@::: EMP-0001 Does exists in my map.....Bool check.');
}else{
    System.debug('$$$::::EMP-0001 is NOT present in map.--upd....');
}

//keySet() - Example - keySet() will help in returning key values from MAP
Map<Integer,String> mpVal = new Map<Integer,String>();
mpVal.put(1,'Snacks');
mpVal.put(2,'Chocos');
mpVal.put(3,'SoftDrinks');
mpVal.put(4,'USB Cable');
mpVal.put(5,'Soap');
//mpVal.put(1,'Cleaning Kit');        // using key 1 once again with different value (from Snaks to Cleaning Kit)
mpVal.put(6,'Cleaning Kit');
mpval.put(7,'Chocos');
mpval.put(8,'SoftDrinks');
system.debug('@@@:::'+mpval);
system.debug('@@@:::MY KEY VALUES in MAP are:::::'+mpVal.keySet());

Map<Integer,String> mpVal = new Map<Integer,String>();
mpVal.put(1,'Snacks');
mpVal.put(2,'Chocos');
mpVal.put(3,'SoftDrinks');
mpVal.put(4,'USB Cable');
system.debug('@@@@::::'+mpVal.get(3));
system.debug('@@@@::::'+mpVal.get(8));






