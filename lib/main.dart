import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'UTS Flutter Mobile Lanjutan';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 58, 95, 118),
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'image/foto.jpg',
                  height: 180,
                ),
                SizedBox(height: 16),
                Table(
                  columnWidths: const {
                    0: FlexColumnWidth(0.8), // Untuk label
                    1: FlexColumnWidth(0.2), // Untuk nilai
                    2: FlexColumnWidth(2), // Untuk titik dua
                  },
                  children: const [
                    TableRow(
                      children: [
                        Text(
                          'NAMA',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          ':',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Devita Apriliani',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text(
                          'TGL Lahir',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          ':',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Purbalingga, 27 April 2004',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text(
                          'ALAMAT',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          ':',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Metenggeng, rt 2 rw 06, Bojongsari',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Divider(
                  color: Colors.black,
                  thickness: 4,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Tentang Saya',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Saya lahir Di Kota Purbalingga, sebagai anak pertama dan punya adik perempuan satu. Pendidkan terakhir SMK N 1 Bojongsari, pernah magang di Stasiun PT Tugu Televisi Yogyakarta. Sekarang mengikuti perkuliahan di STMIK Widya Utama jurusan Teknik Informatika.',
                  style: TextStyle(fontSize: 18),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 4,
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    SvgPicture.asset('image/ic_whatsapp.svg',
                        width: 40, semanticsLabel: 'Whatsapp Logo'),
                    SizedBox(
                      width: 6,
                    ),
                    Text('+6283869797832', style: TextStyle(fontSize: 16)),
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset('image/ic_instagram.svg',
                        semanticsLabel: 'Instagram Logo'),
                    SizedBox(
                      width: 6,
                    ),
                    Text('Liliaveee', style: TextStyle(fontSize: 16)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
