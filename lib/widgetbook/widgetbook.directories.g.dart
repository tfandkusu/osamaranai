// dart format width=80
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:osamaranai/widgetbook/age_and_address_label.usecase.dart'
    as _osamaranai_widgetbook_age_and_address_label_usecase;
import 'package:osamaranai/widgetbook/logical_pixel_card.usecase.dart'
    as _osamaranai_widgetbook_logical_pixel_card_usecase;
import 'package:osamaranai/widgetbook/login_indicator.usecase.dart'
    as _osamaranai_widgetbook_login_indicator_usecase;
import 'package:osamaranai/widgetbook/verified_badge.usecase.dart'
    as _osamaranai_widgetbook_verified_badge_usecase;
import 'package:widgetbook/widgetbook.dart' as _widgetbook;

final directories = <_widgetbook.WidgetbookNode>[
  _widgetbook.WidgetbookComponent(
    name: 'LogicalPixelCard',
    useCases: [
      _widgetbook.WidgetbookUseCase(
        name: 'Default',
        builder: _osamaranai_widgetbook_logical_pixel_card_usecase
            .logicalPixelCardUseCase,
      ),
    ],
  ),
  _widgetbook.WidgetbookFolder(
    name: 'component',
    children: [
      _widgetbook.WidgetbookComponent(
        name: 'AgeAndAddressLabel',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Default',
            builder: _osamaranai_widgetbook_age_and_address_label_usecase
                .ageAndAddressLabelUseCase,
          ),
        ],
      ),
      _widgetbook.WidgetbookComponent(
        name: 'LoginIndicator',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Default',
            builder: _osamaranai_widgetbook_login_indicator_usecase
                .loginIndicatorUseCase,
          ),
        ],
      ),
      _widgetbook.WidgetbookComponent(
        name: 'VerifiedBadge',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Default',
            builder: _osamaranai_widgetbook_verified_badge_usecase
                .verifiedBadgeUseCase,
          ),
        ],
      ),
    ],
  ),
];
