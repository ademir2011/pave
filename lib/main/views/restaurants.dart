import 'package:flutter/material.dart';

class Restaurants extends StatefulWidget {
  static final String route = '/restaurants';

  @override
  _RestaurantsState createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF181818),
        child: Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top, right: 15, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(
                    Icons.menu,
                    size: 35,
                    color: Color(0xFFB18E8E),
                  ),
                  Icon(
                    Icons.search,
                    size: 25,
                    color: Color(0xFFB18E8E),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                          listItens('assets/images/pizza.jpg', 'Pizzaria'),
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: listItens(
                          'assets/images/sanduiche.jpg', 'Hamburgueria'),
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                          listItens('assets/images/japonesa.jpg', 'Japonesa'),
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                          listItens('assets/images/doceteria.jpg', 'Doceria'),
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: listItens('assets/images/domar.jpg', 'Do mar'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Favoritos',
                style: TextStyle(
                  color: Color(0xFFB18E8E),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    'Hoje',
                    style: TextStyle(
                      color: Color(0xFFB18E8E),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Na semana',
                    style: TextStyle(
                      color: Color(0xFFB18E8E),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'No mês',
                    style: TextStyle(
                      color: Color(0xFFB18E8E),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  children: listItensRestaurants(),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF181818),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
              color: Color(0xFFB18E8E),
            ),
            title: Text(
              'Categoria',
              style: TextStyle(
                color: Color(0xFFB18E8E),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.map,
              color: Color(0xFFB18E8E),
            ),
            title: Text(
              'Mapa',
              style: TextStyle(
                color: Color(0xFFB18E8E),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> listItens(String imageName, String itemName) => [
        Container(
          width: 80,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(imageName),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          itemName,
          style: TextStyle(
            color: Color(0xFFB18E8E),
          ),
        ),
      ];

  List<Widget> listItensRestaurants() => [
        itemRestaurants('assets/images/reismagos.jpg', 'Famiglia Reis Magos',
            'Pizzaria', 'Av. Ayrton Senna nº xxx', 'a 500 m'),
        itemRestaurants('assets/images/pizza.jpg', 'Pizzaria do Zé', 'Pizzaria',
            'Av. Ayrton Senna nº xxx', 'a 500 m'),
        itemRestaurants('assets/images/sanduiche.jpg', 'Hotdog da Maria',
            'Lanchonete', 'Av. Ayrton Senna nº xxx', 'a 500 m'),
        itemRestaurants('assets/images/pizzahut.png', 'Pizza Hut', 'Pizzaria',
            'Av. Ayrton Senna nº xxx', 'a 500 m'),
        itemRestaurants('assets/images/mangai.png', 'Mangai', 'Pizzaria',
            'Av. Ayrton Senna nº xxx', 'a 500 m'),
      ];

  Widget itemRestaurants(String imagePath, String title, String type,
          String address, String distance) =>
      Card(
        color: Color(0xFF181818),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFB18E8E), width: 0.75),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 100,
          child: Row(
            children: [
              Container(
                width: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              color: Color(0xFFB18E8E),
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            type,
                            style: TextStyle(
                              color: Color(0xFFEBCFCF).withAlpha(65),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            address,
                            style: TextStyle(
                              color: Color(0xFFEBCFCF).withAlpha(65),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            distance,
                            style: TextStyle(
                              color: Color(0xFFEBCFCF).withAlpha(65),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: Color(0xFFB18E8E),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.thumb_up,
                          color: Color(0xFFB18E8E),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
