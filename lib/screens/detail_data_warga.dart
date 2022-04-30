import 'package:flutter/material.dart';

class DetailDataWarga extends StatelessWidget {
  const DetailDataWarga({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(70.0),
            child: AppBar(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0))),
              centerTitle: true,
              title: Text(
                'Data Warga',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                    color: Colors.white),
              ),
            )),
        body: SafeArea(
          child: Column(
            children: [
              Text(
                'Detail Data Warga',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              Container()
            ],
          ),
        ));
  }
}
