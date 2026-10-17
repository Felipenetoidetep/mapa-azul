
import 'package:flutter_test/flutter_test.dart';
import 'package:mapa_azul/main.dart';

void main() {
  testWidgets('A tela inicial do MAPA AZUL é exibida', (
      WidgetTester tester,
      ) async {
    await tester.pumpWidget(const MapaAzulApp());

    expect(find.text('MAPA AZUL'), findsOneWidget);
    expect(
      find.text('A natureza precisa da nossa atenção.'),
      findsOneWidget,
    );
    expect(
      find.text('Entrar na plataforma'),
      findsOneWidget,
    );
    expect(
      find.text('Registrar ocorrência ambiental'),
      findsOneWidget,
    );
  });
}
