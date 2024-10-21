import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: () {},
        child: SizedBox(
          height: getProportionateScreenWidth(150),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/burger-banner-pic.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xFF343434).withOpacity(0.4),
                        const Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: getProportionateScreenWidth(25),
                      right: getProportionateScreenWidth(15),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize
                          .min, // Menghindari jarak vertikal yang tidak perlu
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'SUPER',
                          style: TextStyle(
                            fontFamily:
                                'Roboto', // Sesuaikan dengan font yang kamu inginkan
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0xFFFFA500), // Warna oranye
                            height: 1.0, // Sesuaikan tinggi baris
                          ),
                        ),
                        const Text(
                          'Delicious',
                          style: TextStyle(
                            fontFamily:
                                'Cursive', // Sesuaikan dengan font skrip
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                            height: 0.9, // Sedikit lebih rapat
                          ),
                        ),
                        Text(
                          'BURGER',
                          style: GoogleFonts.getFont(
                            'Kaushan Script', // Font bergaya blok tebal
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: const Color(0xFFFFA500), // Warna oranye
                            letterSpacing: 2.0, // Jarak antar huruf
                            height: 0.9, // Mengurangi jarak vertikal
                          ),
                        ),
                        const Text(
                          "TODAY'S BEST DEAL",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                            height: 0.9, // Mengatur jarak vertikal lebih rapat
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
