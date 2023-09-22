import 'package:flutter/material.dart';

import 'category_data_widget.dart';

class GridKategoriWidget extends StatelessWidget {
  const GridKategoriWidget({super.key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const CategoryDataWidget()));
          },
          child: Card(
            child: SizedBox(
              height: size.height * .1,
              width: size.width * .39,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.asset(
                          'lib/images/google.png',
                          height: 150,
                          width: 150,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text('data'),
                  ],
                ),
              ),
            ),
          ),
        ),
        Card(
          child: SizedBox(
            height: size.height * .1,
            width: size.width * .39,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset(
                        'lib/images/google.png',
                        height: 150,
                        width: 150,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Spacer(),
                  Text('data'),
                ],
              ),
            ),
          ),
        ),
        Card(
          child: SizedBox(
            height: size.height * .1,
            width: size.width * .39,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset(
                        'lib/images/google.png',
                        height: 150,
                        width: 150,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Spacer(),
                  Text('data'),
                ],
              ),
            ),
          ),
        ),
        Card(
          child: SizedBox(
            height: size.height * .1,
            width: size.width * .39,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset(
                        'lib/images/google.png',
                        height: 150,
                        width: 150,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Spacer(),
                  Text('data'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
