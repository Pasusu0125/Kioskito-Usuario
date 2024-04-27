import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kioskito_usuario/common/paleta.dart';
import 'package:kioskito_usuario/data/data_carousel.dart';
import 'package:kioskito_usuario/models/carousel_model.dart';
import 'package:kioskito_usuario/structure/cont_text.dart';

class CarouselProducts extends StatefulWidget {
  const CarouselProducts({
    super.key,
  });

  @override
  State<CarouselProducts> createState() => _CarouselProductsState();
}

class _CarouselProductsState extends State<CarouselProducts> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: carruselImages.length,
      itemBuilder: (context, index, realIndex) {
        final carouselImage = carruselImages[index];
        return CardImages(
          carruselImages: carouselImage,
        );
      },
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.5,
        autoPlay: true,
        autoPlayCurve: Curves.easeInOut,
        autoPlayInterval: const Duration(seconds: 5),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class CardImages extends StatelessWidget {
  final Menu carruselImages;
  const CardImages({super.key, required this.carruselImages});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width * 0.7,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), color: blanco),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: const AssetImage("assets/loading.gif"),
                image: AssetImage(
                  carruselImages.image,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.005),
            child: ContenedorTexto(
              w: MediaQuery.of(context).size.width * 0.6,
              h: MediaQuery.of(context).size.height * 0.06,
              text: carruselImages.name,
              style: Theme.of(context).textTheme.titleSmall,
              maxF: 32,
              minF: 18,
              maxL: 1,
              posicionText: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.05),
            child: ContenedorTextoGrande(
              w: MediaQuery.of(context).size.width * 0.6,
              h: MediaQuery.of(context).size.height * 0.06,
              text: carruselImages.description,
              style: Theme.of(context).textTheme.titleSmall,
              maxF: 32,
              minF: 18,
              maxL: 4,
              posicionText: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.005),
            child: ContenedorTexto(
              w: MediaQuery.of(context).size.width * 0.6,
              h: MediaQuery.of(context).size.height * 0.06,
              text: carruselImages.value,
              style: Theme.of(context).textTheme.titleSmall,
              maxF: 32,
              minF: 18,
              maxL: 1,
              posicionText: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }
}
