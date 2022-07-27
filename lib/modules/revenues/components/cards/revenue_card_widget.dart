import 'package:flutter/material.dart';
import '../../../../src/utils/colors_utils.dart';

class CardFreeRevenues extends StatelessWidget {
  var imageCard;
  var subtitleRevenue;
  var titleRevenue;
  var titleCard;

   CardFreeRevenues({Key? key, required this.titleCard, required this.imageCard, required this.titleRevenue, required this.subtitleRevenue,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5,
          color: ColorsUtils.greenPrimary,
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                  padding: EdgeInsets.all(6),
                  child: Text(
                    titleCard,
                    style: TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
                  ),
                ),
              ]),
              Container(
                width: 250,
                child: Stack(
                  children: [
                    Image.asset(imageCard),
                    Positioned(
                      top: 20,
                      left: 10,
                      child: Container(
                          width: 250,
                          color: ColorsUtils.darkPrimary,
                          child: ListTile(
                            title: Text(titleRevenue, maxLines: 1, overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: ColorsUtils.white,
                                  fontSize: 28,
                                  fontFamily: 'GeosansLight'),
                            ),
                            subtitle: Text(subtitleRevenue,
                                style: TextStyle(
                                    color: ColorsUtils.white,
                                    fontSize: 18,
                                    fontFamily: 'GeosansLight')),
                          )),
                    ),
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                Text('Ver mais',style: TextStyle(fontFamily: 'GeosansLight', fontSize: 16)),
                IconButton(
                    onPressed: () async {
                     Navigator.pushNamed(context, 'revenue-details');
                    },
                    icon: Icon(
                      Icons.open_in_new_sharp,
                      color: ColorsUtils.greenSecondary,
                    ))
              ]),
            ],
          ))
    ]);
  }
}
