import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portafolios/estilo/paleta_colores.dart';
import 'package:portafolios/pages/sobre_mi.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                padding: EdgeInsets.fromLTRB(30.sp, 20, 30.sp, 0),
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
                                color: AppColors.underlined,
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
                    SizedBox(width: 10.w), // Espacio entre el texto y la imagen
                    Image.asset(
                      'assets/images/portfolio.jpg',
                      width: MediaQuery.of(context).size.width / 5,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                        width: 10
                            .w), // Espacio entre la imagen y el siguiente texto
                    Expanded(
                        child: Column(
                      children: [
                        SizedBox(
                          height: 90.sp,
                        ),
                        RichText(
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
                                    color: AppColors.underlined,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                TextSpan(
                                    text:
                                        "por aprender me\nimpulsan a explorar constantemente\nnuevas tecnologías y conceptos.”")
                              ]),
                        ),
                      ],
                    )),
                  ],
                ),
              ),
              Center(
                  child: InkWell(
                onTap: () {
                  // Acción que quieres realizar al hacer clic en la imagen
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const SobreMi()));
                },
                child: Image.asset(
                  'assets/images/icono_de_flecha_abajo.png',
                  width: 15.sp,
                  height: 15.sp,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
