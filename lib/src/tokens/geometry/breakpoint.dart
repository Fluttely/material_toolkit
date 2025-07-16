// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// Define os breakpoints canônicos do Material Design 3, conhecidos como "window size classes".
///
/// Estes valores não são arbitrários; eles são baseados em extensas pesquisas do Google
/// sobre os tamanhos de tela mais comuns em todo o ecossistema de dispositivos. Eles funcionam
/// como limites inferiores que categorizam o espaço disponível para a UI, permitindo que os
/// layouts se adaptem de forma consistente e ergonômica.
///
/// A lógica é garantir que a aplicação ofereça a melhor experiência de uso possível,
/// seja em um celular pequeno ou em um monitor ultra-wide.
///
/// Veja a documentação oficial: https://m3.material.io/foundations/layout/applying-layout/window-size-classes
abstract final class MaterialBreakpoint {
  /// **Compact** (0dp a 599dp): O menor breakpoint, representando a base para o design.
  ///
  /// **Dispositivo Típico**: Celulares no modo retrato 📱.
  /// **Uso Comum**: Interfaces focadas em uma única coluna, com navegação inferior ou gaveta (drawer).
  static const double compact = 0;

  /// **Medium** (600dp a 839dp): O primeiro ponto de adaptação para telas maiores.
  ///
  /// **Dispositivo Típico**: Celulares no modo paisagem e tablets pequenos (como iPads Mini) ↔️.
  /// **Uso Comum**: Permite introduzir painéis secundários, como listas e detalhes lado a lado,
  /// ou barras de navegação laterais (navigation rails) no lugar das barras inferiores.
  static const double medium = 600;

  /// **Expanded** (840dp a 1199dp): O breakpoint para telas que oferecem mais espaço horizontal.
  ///
  /// **Dispositivo Típico**: Tablets maiores no modo paisagem (como iPads Pro) e notebooks dobráveis 💻.
  /// **Uso Comum**: Ideal para layouts mais complexos, com múltiplos painéis, ou para
  /// exibir conteúdo que se beneficia de mais espaço, como dashboards e ferramentas de edição.
  static const double expanded = 840;

  /// **Large** (1200dp a 1599dp): Otimizado para a experiência de desktop.
  ///
  /// **Dispositivo Típico**: Telas de notebooks e desktops padrão 🖥️.
  /// **Uso Comum**: Layouts que podem exibir painéis fixos (como navegação lateral sempre visível)
  /// sem comprometer a área de conteúdo principal. O espaço permite interfaces ricas em informação.
  static const double large = 1200;

  /// **Extra-large** (1600dp em diante): Para os maiores tamanhos de tela disponíveis.
  ///
  /// **Dispositivo Típico**: Monitores grandes e ultra-wide 🖥️✨.
  /// **Uso Comum**: Permite layouts totalmente expansivos, com múltiplas colunas de conteúdo,
  /// ferramentas auxiliares visíveis e aproveitamento máximo do espaço horizontal.
  static const double extraLarge = 1600;
}
