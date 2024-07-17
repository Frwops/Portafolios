import 'package:flutter/material.dart';
import 'package:portafolios/Estilo/paleta_colores.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        return MaterialApp(
          home: Scaffold(
            backgroundColor: AppColors.backgroundColor,
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      'HOLA MUNDO',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: 40.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter',
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: RichText(
                              textAlign: TextAlign.left,
                              text: TextSpan(
                                style: TextStyle(
                                  color: AppColors.textColor,
                                  fontSize: 5.sp,
                                  fontFamily: 'Inter',
                                ),
                                children: const [
                                  TextSpan(
                                    text: 'Soy ',
                                  ),
                                  TextSpan(
                                    text: 'Francisco',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ', un apasionado estudiante\nde programación.',
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                              width:
                                  10.w), // Espacio entre el texto y la imagen
                          Image.asset(
                            'assets/images/portfolio.jpg',
                            width: MediaQuery.of(context).size.width / 3,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                              width: 10
                                  .w), // Espacio entre la imagen y el siguiente texto
                          Expanded(
                              child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                style: TextStyle(
                                  color: AppColors.textColor,
                                  fontSize: 5.sp,
                                  fontFamily: 'Inter',
                                ),
                                children: const [
                                  TextSpan(text: "“Mi curiosidad y "),
                                  TextSpan(
                                    text: "amor ",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  TextSpan(
                                      text:
                                          "por aprender me\nimpulsan a explorar constantemente\nnuevas tecnologías y conceptos.”")
                                ]),
                          )),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200.h,
                      color: const Color.fromARGB(0, 224, 224, 224),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
