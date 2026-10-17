
import 'package:flutter/material.dart';

void main() {
  runApp(const MapaAzulApp());
}

class MapaAzulApp extends StatelessWidget {
  const MapaAzulApp({super.key});

  @override
  Widget build(BuildContext context) {
    const verde = Color(0xFF176B57);
    const azul = Color(0xFF176B87);

    return MaterialApp(
      title: 'MAPA AZUL',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: verde,
          primary: verde,
          secondary: azul,
        ),
        scaffoldBackgroundColor: const Color(0xFFF4F8F6),
        fontFamily: 'Roboto',
      ),
      home: const TelaInicial(),
    );
  }
}

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    const verde = Color(0xFF176B57);
    const azul = Color(0xFF176B87);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 520),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 24),

                  Container(
                    height: 112,
                    width: 112,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: verde.withValues(alpha: 0.10),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.water_drop_rounded,
                      color: azul,
                      size: 64,
                    ),
                  ),

                  const SizedBox(height: 24),

                  const Text(
                    'MAPA AZUL',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      color: verde,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'A natureza precisa da nossa atenção.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xFF40534B),
                    ),
                  ),

                  const SizedBox(height: 28),

                  Container(
                    padding: const EdgeInsets.all(22),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(
                        color: const Color(0xFFDCE9E2),
                      ),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.public_rounded,
                          color: azul,
                          size: 34,
                        ),
                        SizedBox(height: 14),
                        Text(
                          'Conhecer. Registrar. Preservar.',
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF203D32),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Uma plataforma de ciência cidadã para '
                              'acompanhar questões ambientais, compartilhar '
                              'observações e fortalecer a educação ambiental.',
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.6,
                            color: Color(0xFF52645B),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  FilledButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'O acesso será disponibilizado '
                                'na próxima etapa.',
                          ),
                        ),
                      );
                    },
                    icon: const Icon(Icons.login_rounded),
                    label: const Text('Entrar na plataforma'),
                    style: FilledButton.styleFrom(
                      backgroundColor: verde,
                      minimumSize: const Size.fromHeight(54),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  OutlinedButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'O registro ambiental será '
                                'implementado na próxima etapa.',
                          ),
                        ),
                      );
                    },
                    icon: const Icon(Icons.add_location_alt_outlined),
                    label: const Text('Registrar ocorrência ambiental'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: verde,
                      minimumSize: const Size.fromHeight(54),
                      side: const BorderSide(color: verde),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),

                  const SizedBox(height: 28),

                  const Text(
                    'Ciência cidadã • Educação ambiental • '
                        'Preservação',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF718078),
                    ),
                  ),

                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
