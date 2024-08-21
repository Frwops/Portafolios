import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portafolios/estilo/paleta_colores.dart';
import 'package:portafolios/pages/home.dart';

class Habilidades extends StatelessWidget {
  const Habilidades({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Container(
        padding: EdgeInsets.fromLTRB(10.sp, 6.sp, 6.sp, 0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'HABILIDADES',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inter',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 6 / 10,
                  height: 0.5.sp,
                  color: AppColors.textColor,
                ),
              ],
            ),
            SizedBox(
              height: 10.sp,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(1.sp, 1.sp, 1.sp, 1.sp),
                          child: Image.asset(
                            'assets/images/python.png',
                            width: 10.sp,
                            height: 10.sp,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'Pyhton',
                          style: TextStyle(
                            color: AppColors.textColor,
                            fontSize: 5.sp,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(1.sp, 1.sp, 1.sp, 1.sp),
                          child: Image.asset(
                            'assets/images/html.png',
                            width: 10.sp,
                            height: 10.sp,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'HTML',
                          style: TextStyle(
                            color: AppColors.textColor,
                            fontSize: 5.sp,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(1.sp, 1.sp, 1.sp, 1.sp),
                          child: Image.asset(
                            'assets/images/css.png',
                            width: 10.sp,
                            height: 10.sp,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'CSS',
                          style: TextStyle(
                            color: AppColors.textColor,
                            fontSize: 5.sp,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(1.sp, 1.sp, 1.sp, 1.sp),
                          child: Image.asset(
                            'assets/images/javascript.png',
                            width: 10.sp,
                            height: 10.sp,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'JavaScript',
                          style: TextStyle(
                            color: AppColors.textColor,
                            fontSize: 5.sp,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(1.sp, 1.sp, 1.sp, 1.sp),
                          child: Image.asset(
                            'assets/images/flutter.png',
                            width: 10.sp,
                            height: 10.sp,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'Flutter',
                          style: TextStyle(
                            color: AppColors.textColor,
                            fontSize: 5.sp,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(1.sp, 1.sp, 1.sp, 1.sp),
                          child: Image.asset(
                            'assets/images/mysql.png',
                            width: 10.sp,
                            height: 10.sp,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'MySql',
                          style: TextStyle(
                            color: AppColors.textColor,
                            fontSize: 5.sp,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(1.sp, 1.sp, 1.sp, 1.sp),
                          child: Image.asset(
                            'assets/images/php.png',
                            width: 10.sp,
                            height: 10.sp,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'PHP',
                          style: TextStyle(
                            color: AppColors.textColor,
                            fontSize: 5.sp,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 100.sp,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(1.sp, 1.sp, 1.sp, 1.sp),
                          child: Image.asset(
                            'assets/images/uml.png',
                            width: 10.sp,
                            height: 10.sp,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'UML',
                          style: TextStyle(
                            color: AppColors.textColor,
                            fontSize: 5.sp,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(1.sp, 1.sp, 1.sp, 1.sp),
                          child: Image.asset(
                            'assets/images/figma.png',
                            width: 10.sp,
                            height: 10.sp,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'Figma',
                          style: TextStyle(
                            color: AppColors.textColor,
                            fontSize: 5.sp,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(1.sp, 1.sp, 1.sp, 1.sp),
                          child: Image.asset(
                            'assets/images/git.png',
                            width: 10.sp,
                            height: 10.sp,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'Git',
                          style: TextStyle(
                            color: AppColors.textColor,
                            fontSize: 5.sp,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 45.sp,
                    )
                  ],
                )
              ],
            ),
            Center(
              child: InkWell(
                onTap: () {
                  // Acción que quieres realizar al hacer clic en la imagen
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Home()));
                },
                child: Image.asset(
                  'assets/images/icono_de_flecha_abajo.png',
                  width: 15.sp,
                  height: 15.sp,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
