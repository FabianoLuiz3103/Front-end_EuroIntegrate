import 'package:eurointegrate_app/pages/admin/components/sinal_ativo.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BannerAdmin extends StatelessWidget {
  final Text titulo;
  const BannerAdmin({Key? key, required this.titulo})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('MMMM - yyyy', 'pt_BR').format(DateTime.now());
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(18, 8, 18, 8),
        child: Container(
          width: MediaQuery.of(context).size.height * 0.95,
          height: MediaQuery.of(context).size.height * 0.24,
          decoration: const BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(formattedDate.toUpperCase()),
                    Row(
                      children: [
                        const Text("ATIVO"),
                        const SizedBox(width: 10),
                        BlinkingCircle(),
                      ],
                    ),
                  ],
                ),
              ),
               Expanded(
                child: Center(
                  child: titulo,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
