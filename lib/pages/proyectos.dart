import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portafolios/estilo/paleta_colores.dart';
import 'package:portafolios/pages/habilidades.dart';
import 'package:url_launcher/url_launcher.dart'; // librería para lanzar URLs

class Proyectos extends StatefulWidget {
  const Proyectos({super.key});

  @override
  _ProyectosState createState() => _ProyectosState();
}

class _ProyectosState extends State<Proyectos> {
  double _opacityPetCare = 0.5;
  double _opacityHorusDungaen = 0.5;
  String _selectedDescription = '';
  String _link = '';

  void _onTapPetCare() {
    setState(() {
      _opacityPetCare = 1.0;
      _opacityHorusDungaen = 0.5;
      _selectedDescription =
          'Aplicación para Android{\n\nFront-End = Flutter;\nBack-End = Laravel;\nBBDD = MySql;\n\n}';
      _link =
          'https://www.figma.com/design/ZPOIcc7jP344CbJSRNuLuD/PetCare?node-id=0-1&t=uv4tsqNvtnlhlRq7-1'; // link del proyecto
    });
  }

  void _onTapHorusDungaen() {
    setState(() {
      _opacityHorusDungaen = 1.0;
      _opacityPetCare = 0.5;
      _selectedDescription =
          'Videojuego independiente para Windows{\n\nDesarrollo = Unity;\nDiseño = PixelStudio\n\n}';
      _link = 'https://chumsteam.itch.io/horus-dungaen'; // link del proyecto
    });
  }

  // Función para abrir el enlace en el navegador
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo abrir el enlace $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(10.sp, 6.sp, 6.sp, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'PROYECTOS',
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
              SizedBox(height: 10.sp),
              Row(
                children: [
                  InkWell(
                    onTap: _onTapPetCare,
                    child: Opacity(
                      opacity: _opacityPetCare,
                      child: Image.asset(
                        'assets/images/logo_petcare.png',
                        width: 60.sp,
                        height: 60.sp,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10.sp),
                  InkWell(
                    onTap: _onTapHorusDungaen,
                    child: Opacity(
                      opacity: _opacityHorusDungaen,
                      child: Image.asset(
                        'assets/images/logo_horus_dungaen.gif',
                        width: 60.sp,
                        height: 60.sp,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.sp),
              Text(
                _selectedDescription,
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 5.sp,
                  fontFamily: 'Inter',
                ),
              ),
              if (_selectedDescription
                  .isNotEmpty) // Mostrar el botón solo si hay una descripción seleccionada
                TextButton(
                  onPressed: () => _launchURL(_link),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.blue, // Color del texto del botón
                  ),
                  child: Text('¡Miralo!',
                      style: TextStyle(
                        fontSize: 5.sp,
                      )),
                ),
              Center(
                child: InkWell(
                  onTap: () {
                    // Acción que quieres realizar al hacer clic en la imagen
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Habilidades()));
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
      ),
    );
  }
}
