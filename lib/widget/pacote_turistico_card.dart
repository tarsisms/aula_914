import 'package:aula_914/domain/pacote_turistico.dart';
import 'package:flutter/material.dart';

class PacoteTuristicoCard extends StatefulWidget {
  final PacoteTuristico pacoteTuristico;

  const PacoteTuristicoCard({
    Key? key,
    required this.pacoteTuristico,
  }) : super(key: key);

  @override
  _PacoteTuristicoCardState createState() => _PacoteTuristicoCardState();
}

class _PacoteTuristicoCardState extends State<PacoteTuristicoCard> {
  PacoteTuristico get pacote => widget.pacoteTuristico;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(8),
            ),
            child: Image.network(pacote.imagem),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pacote.titulo,
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(pacote.transporte),
                SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.wb_sunny_outlined),
                    const SizedBox(width: 4),
                    Text('${pacote.numDiarias} Diárias'),
                    const SizedBox(width: 8),
                    const Icon(Icons.person_outline),
                    const SizedBox(width: 4),
                    Text('${pacote.numPessoas} Pessoas'),
                  ],
                ),
                SizedBox(height: 8),
                Text('A partir de R\$ ${pacote.precoAntigo}'),
                Text(
                  'R\$ ${pacote.precoAtual}',
                  style: const TextStyle(
                    color: Colors.orange,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Cancelamento Grátis!',
                  style: TextStyle(
                    color: Colors.green[700],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
