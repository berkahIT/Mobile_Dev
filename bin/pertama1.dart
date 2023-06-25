// import "dart:io";

// void main(List<String> arguments) {
  // int? number = int.parse(stdin.readLineSync()!);

  // String output = 
  // (number > 0) ? "bilangan positif" : "bilangan 0 atau negatif";
  // print(output);

  // switch(number) {
  //   case 1: print("ini angka 1");
  //   break;
  //   case 2: print("ini angka 2");
  //   break;
  //   case 5: print("ini angka 5");
  //   break;
  //   default: print("angka tidak terdaftar");
  //   }
    
  // for (int angka = 70; angka <100; angka++){
  //   print("Ini angka $angka");
  // }

  // int number = 0;
  // while (number < 7 ){
  //   number++;
  //   print("Ini angka ke $number");
  // }

  // double perkalian(double a, double b){
  //   double hasil;
  //   hasil = a * b;
  //   return hasil;
  // }
  // void main(List<String>arguments){
  //   print(perkalian(9, 10));
  // }

  String greeting(String nama, String alamat,{int? usia, String? jk}){
    return "My name $nama. My address $alamat. ${(usia != null) ?". My age $usia" :""} ${(jk != null) ?" and I $jk" :""}";
  }
  void main(List<String>arguments){
    // List<int> list = [4, 6, 2, 8, 5];
    // for (int i = 0; i < list.length; i++){
    //   print(list[i]);
    // }

    // for (int bilangan in list){
    //   print(bilangan);
    // }

    // list.forEach((bilangan){
    //   print(bilangan);
    // });

    List<int> list = [4, 6, 8, 9, 5];
    List<int> mylist = [];

    // mylist.add(4);
    mylist.addAll([1, 3]);
    mylist.insert(2, 2);
    mylist.insertAll(2, [7, 1]);
    // mylist.remove(4);
    // mylist.removeWhere((number) => number % 2 == 0);
    
    List<String> hasil = [];
    hasil = mylist.map((e) => "angka ke "+ e.toString()).toList();

    for (String bilangan in hasil){
      print(bilangan);
    }
  }
