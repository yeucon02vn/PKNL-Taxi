import 'package:flutter/material.dart';
import 'package:taxi_app/src/model/place_item_res.dart';
import 'package:taxi_app/src/resources/ride_picker_page.dart';

class RidePicker extends StatefulWidget {
  @override
   final Function(PlaceItemRes, bool) onSelected;
  RidePicker(this.onSelected);
  _RidePickerState createState() => _RidePickerState();
}

class _RidePickerState extends State<RidePicker> {
  @override
  PlaceItemRes fromAddress;
  PlaceItemRes toAddress;

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(6)),
          boxShadow: [
            BoxShadow(
              color: Color(0x88999999),
              offset: Offset(0, 5),
              blurRadius: 5.0,
            ),
          ]),
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 30,
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => RidePickerPage(
                            fromAddress == null ? "" : fromAddress.name,
                            (place, isFrom) {
                          widget.onSelected(place, isFrom);
                          fromAddress = place;
                          setState(() {});
                        }, true)));
              },
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  alignment: AlignmentDirectional.centerStart,
                  children: <Widget>[
                    SizedBox(
                      width: 40,
                      height: 50,
                      child: Center(
                        child: Image.asset("ic_location_black.png"),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      width: 40,
                      height: 30,
                      child: Center(
                        child: Image.asset("ic_remove_x.png"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 50),
                      child: Text(
                        "30 Trần Não, Phường Bình An, Q2, HCM",
                        overflow: TextOverflow.ellipsis,
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff323643)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Divider(color: Colors.black,),
          Container(
            width: double.infinity,
            height: 30,
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        RidePickerPage(toAddress == null ? "" : toAddress.name,
                            (place, isFrom) {
                          widget.onSelected(place, isFrom);
                          toAddress = place;
                          setState(() {});
                        }, false)));
              },
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  alignment: AlignmentDirectional.centerStart,
                  children: <Widget>[
                    SizedBox(
                      width: 40,
                      height: 50,
                      child: Center(
                        child: Image.asset("ic_map_nav.png"),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      width: 40,
                      height: 30,
                      child: Center(
                        child: Image.asset("ic_remove_x.png"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 50),
                      child: Text(
                        "Home",
                        overflow: TextOverflow.ellipsis,
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff323643)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}