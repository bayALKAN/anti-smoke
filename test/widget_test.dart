// Sigara Bırak Uygulaması Widget Test
//
// Uygulamanın temel widget'larının doğru çalıştığını test eder.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:uygulama/main.dart';

void main() {
  testWidgets('Sigara Bırak uygulaması başlatma testi', (
    WidgetTester tester,
  ) async {
    // Uygulamayı başlat
    await tester.pumpWidget(const SigaraBirakApp());

    // Başlangıç ekranının yüklendiğini doğrula
    expect(find.text('Sigara Bırak'), findsWidgets);

    // Başlangıç butonu var mı kontrol et
    expect(find.text('Başlangıç Tarihini Seç'), findsOneWidget);

    // Smoke-free ikonu var mı kontrol et
    expect(find.byIcon(Icons.smoke_free), findsOneWidget);
  });

  testWidgets('Başlangıç ekranı görünüm testi', (WidgetTester tester) async {
    await tester.pumpWidget(const SigaraBirakApp());

    // Motivasyon metnini kontrol et
    expect(find.textContaining('Sağlıklı yaşam'), findsOneWidget);
  });
}
