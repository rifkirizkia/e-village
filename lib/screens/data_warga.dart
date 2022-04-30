import 'package:e_village/models/data_warga.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant/r.dart';

class DataWarga extends StatelessWidget {
  const DataWarga({Key? key}) : super(key: key);
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
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search), //icon diluar TextField
                fillColor: Colors.white,
                filled:
                    true, //jika memakai prefix/suffix maka tidak boleh menggunakan prefix/suffix text dan prefix/suffix style
                labelText: "Cari Warga", //text diluar TextField
                labelStyle: const TextStyle(color: Colors.grey),
                hintText: "Search Here...",
                hintStyle: const TextStyle(fontSize: 12),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            // padding: const EdgeInsets.symmetric(horizontal: 8),
            itemCount: listDataWarga.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                color: R.colors.primary,
                width: double.maxFinite,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nama: ${listDataWarga[index].nama}',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              Text(
                                'RT: ${listDataWarga[index].rt}',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'RW: ${listDataWarga[index].rw}',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                              color: R.colors.green,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              const Text(
                                'Selengkapnya',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              SvgPicture.asset(R.assets.panah)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(color: Colors.transparent),
          ),
        ],
      )),
    );
  }
}
