import 'package:e_village/constant/r.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'data_warga.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return const HomePage(gridCount: 3);
        } else if (constraints.maxWidth <= 1200) {
          return const HomePage(gridCount: 4);
        } else {
          return const HomePage(gridCount: 6);
        }
      }),
    );
  }
}

class HomePage extends StatefulWidget {
  final int gridCount;
  const HomePage({required this.gridCount});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> buttonFiture = [
    _ProfilDesa(),
    _DataWarga(),
    _DataDesa(),
    _Lingkungan(),
    _EmergencyCall(),
    _KritikDanSaran()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.secondary,
      body: SafeArea(
        child: Stack(children: [
          Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'NIK:3127361524981',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'NAMA:No Name',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: const [
                            Text(
                              'RT: 01',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
                            ),
                            Text(
                              'RW: 01',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 45,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: R.colors.primary),
                      child: const Center(
                          child: Text(
                        'Warga',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              Center(
                child: SvgPicture.asset(R.assets.logo),
              ),
              SizedBox(height: 30),
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          color: R.colors.grey),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            GridView.count(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                crossAxisCount: widget.gridCount,
                                children: buttonFiture),
                            Center(
                              child: Text(
                                "Berita Terkini",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 150,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                children: [
                                  Image.asset(R.assets.berita1),
                                  Image.asset(R.assets.berita1),
                                  Image.asset(R.assets.berita1),
                                  Image.asset(R.assets.berita1),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

class _Lingkungan extends StatelessWidget {
  const _Lingkungan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: 90,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: R.colors.green),
          child: Center(
            child: SvgPicture.asset(R.assets.lingkungan),
          ),
        ),
        const Text('Lingkungan'),
      ],
    );
  }
}

class _ProfilDesa extends StatelessWidget {
  const _ProfilDesa({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: 90,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: R.colors.green),
          child: Center(
            child: SvgPicture.asset(R.assets.profilDesa),
          ),
        ),
        const Text('Profil Desa'),
      ],
    );
  }
}

class _DataDesa extends StatelessWidget {
  const _DataDesa({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: 90,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: R.colors.green),
          child: Center(
            child: SvgPicture.asset(R.assets.data_desa),
          ),
        ),
        const Text('Lihat Data Desa'),
      ],
    );
  }
}

class _EmergencyCall extends StatelessWidget {
  const _EmergencyCall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: 90,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: R.colors.green),
          child: Center(
            child: SvgPicture.asset(R.assets.emergency_call),
          ),
        ),
        const Text('Panggilan darurat'),
      ],
    );
  }
}

class _DataWarga extends StatelessWidget {
  const _DataWarga({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: ((context) => DataWarga()),
              ),
            );
          },
          child: Container(
            height: 90,
            width: 90,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: R.colors.green),
            child: Center(
              child: SvgPicture.asset(R.assets.data_warga),
            ),
          ),
        ),
        const Text('Lihat Data Warga'),
      ],
    );
  }
}

class _KritikDanSaran extends StatelessWidget {
  const _KritikDanSaran({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: ((context) => DataWarga()),
              ),
            );
          },
          child: Container(
            height: 90,
            width: 90,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: R.colors.green),
            child: Center(
              child: SvgPicture.asset(R.assets.kritikDanSaran),
            ),
          ),
        ),
        const Text('Kritik dan Saran'),
      ],
    );
  }
}
