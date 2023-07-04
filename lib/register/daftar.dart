import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:slicing/register/login_page.dart';

class Daftar extends StatelessWidget {
  const Daftar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 57, left: 20, bottom: 2),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text("Registrasi", style: TextStyle(
                      fontFamily: "Outfit",
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black
                    ),),
                  ),
                  Image(
                      image: Svg("assets/icons/User.svg"),
                      height: 17,
                      width: 18,
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 31),
              child: Text("Selamat bergabung bersama kami",style: TextStyle(
                color: Color(0xFF5B5A5A),
                fontSize: 14,
                fontFamily: "Outfit",
                fontWeight: FontWeight.w400
              ),),
            ),
            Center(
              child: Container(
                width: 108,
                height: 108,
                padding: EdgeInsets.all(28),
                decoration: ShapeDecoration(
                  color: Color(0xFFC4C4C4),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
                child: Image(image: Svg("assets/icons/person.svg"),
                color: Color(0xFFFBF7F7),
                width: 52,
                height: 52,)),
            ),
             Padding(
                    padding: const EdgeInsets.only(top: 31, left: 18, right: 18),
                    child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintStyle: const TextStyle(
                                fontFamily: "Poppins",
                                color: Color(0xFF535050)),
                            hintText: "Nama Panjang",
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Color(0xFF959191))),
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFF959191)),
                                borderRadius: BorderRadius.circular(10)),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 17))),
                  ),
             Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                    child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintStyle: const TextStyle(
                                fontFamily: "Poppins",
                                color: Color(0xFF535050)),
                            hintText: "Email",
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Color(0xFF959191))),
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFF959191)),
                                borderRadius: BorderRadius.circular(10)),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 17))),
                  ),
             Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: TextField(
                        obscureText: true,
                        obscuringCharacter: "*",
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintStyle: const TextStyle(
                                fontFamily: "Poppins",
                                color: Color(0xFF535050)),
                            hintText: "Kata Sandi",
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Color(0xFF959191))),
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFF959191)),
                                borderRadius: BorderRadius.circular(10)),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 17))),
                  ),
             Padding(
                    padding: const EdgeInsets.only(top: 10, left: 18, right: 18, bottom: 43),
                    child: TextField(
                        obscureText: true,
                        obscuringCharacter: "*",
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintStyle: const TextStyle(
                                fontFamily: "Poppins",
                                color: Color(0xFF535050)),
                            hintText: "Konfirmasi Kata Sandi",
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Color(0xFF959191))),
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFF959191)),
                                borderRadius: BorderRadius.circular(10)),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 17))),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: SizedBox(
                      height: 54,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF009688),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                        onPressed: (){}, child: Text("Daftar", style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Sans Jakarta Plus",
                          // letterSpacing: -0.40
                        ),)),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 42, left: 44, right: 44),
                  child: Row(children: [
                    Expanded(child: Divider(color: Color(0xFFA39797),thickness: 1,)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(" atau login dengan ",style: TextStyle(
                        color: Color(0xFF747070),
                        fontSize: 12,
                        fontFamily: "Outfit",
                        fontWeight: FontWeight.w400
                      ),),
                    ),
                    Expanded(child: Divider(color: Color(0xFFA39797),thickness: 1,)),
                  ]),),
                   Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Image(image: AssetImage("assets/icons/icon.png"),
                          width: 19,
                          height: 20,),
                        ),
                        Text("Google", style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500
                        ),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 38, bottom: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Sudah punya akun ? ", style: TextStyle(
                          color: Colors.black.withOpacity(0.6000000238418579),
                          fontSize: 12,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w300
                        ),),
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context, MaterialPageRoute(builder: (context){
                              return LoginPage();
                            }));
                          },
                          child: Text("Masuk",style: TextStyle(
                            color: Colors.black.withOpacity(0.6000000238418579),
                            fontSize: 12,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w700
                          ),),
                        )
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
  }
}