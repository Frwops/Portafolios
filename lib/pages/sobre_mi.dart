import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portafolios/estilo/paleta_colores.dart';

class SobreMi extends StatelessWidget {
  const SobreMi({super.key});

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
                    'SOBRE MI...',
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
                    width: MediaQuery.of(context).size.width *
                        6 /
                        10, // 6/10 del ancho de la pantalla
                    height: 0.5.sp, // Altura de la línea
                    color: AppColors.textColor, // Color de la línea
                  ),
                ],
              ),
              SizedBox(
                height: 15.sp,
              ),
              Row(
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
                            text: 'Mi nombre completo es ',
                          ),
                          TextSpan(
                            text: 'Francisco Ignacio Soto Reyes',
                            style: TextStyle(
                              color: AppColors.underlined,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ',\ntengo 27 años, actualmente vivo en Rancagua, ciudad de\nChile.\n\nEstudio mi tercer año de Ingeniería Informática mención\ndesarrollo de sistemas en el instituto profesional AIEP.\n\nMe desenvolví como gerente de la empresa MANDA ltda.\npor 7 años, lo que me enseño habilidades blandas y\ndisciplina.\n\nToda la vida me he sentido atraído por el arte y el diseño,\nademás de las computadoras, por lo que mi pensamiento\nlógico hace sinergia con mi creatividad, lo que me permite\ncrear en el lienzo informático sistemas adecuados y\nestéticos.',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/portfolio.jpg',
                    width: MediaQuery.of(context).size.width / 5,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 50.sp,
                  )
                ],
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
        ));
  }
}
