import 'package:flutter/material.dart';

class Noticias extends StatelessWidget {
  final List<Noticia> noticias = [
    Noticia(
      titulo: '6 consejos para crear aplicaciones web',
      descripcion: '¿Se te ocurrió una idea de aplicación que te gustaría desarrollar? Es probable que te estés preguntando cómo lograr que sea útil y a su vez, llamativa para los usuarios.',
      imagenUrl: 'https://ceutec.hn/wp-content/uploads/2024/08/consejos-para-crear-aplicaciones-web-atractivas.webp',
    ),
    Noticia(
      titulo: 'Cómo desarrollar tus habilidades de negociación',
      descripcion: 'Negociar es más que una conversación entre dos partes para llegar a un acuerdo, se trata en realidad de un proceso complejo donde se ponen en juego diferentes factores: establecer lazos, comprender los beneficios y las necesidades en juego, fijar objetivos en común y lograr una solución conjunta.',
      imagenUrl: 'https://ceutec.hn/wp-content/uploads/2024/08/como-desarrollar-tus-habilidades-de-negociacion.webp',
    ),
    Noticia(
      titulo: 'Tendencias en decoración 2024',
      descripcion: 'Mantenerse al día con las tendencias en decoración puede transformar cualquier espacio en un hogar moderno y acogedor. Conocé en este artículo las últimas novedades en diseño de interiores y descubrí cómo incorporar estas tendencias para crear ambientes que reflejen la personalidad de quienes los habitan y estén a la vanguardia del diseño. Acompañanos mientras exploramos las ideas más frescas y creativas en el mundo de la decoración.',
      imagenUrl: 'https://ceutec.hn/wp-content/uploads/2024/07/tendencias-en-decoracion-2024.webp',
    ),
  ];

  Noticias({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Noticias'),
      ),
      body: ListView.builder(
        itemCount: noticias.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network(noticias[index].imagenUrl),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    noticias[index].titulo,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(noticias[index].descripcion),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Noticia {
  final String titulo;
  final String descripcion;
  final String imagenUrl;

  Noticia({
    required this.titulo,
    required this.descripcion,
    required this.imagenUrl,
  });
}