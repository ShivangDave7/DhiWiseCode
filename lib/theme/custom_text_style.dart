import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Title text style
  static get titleSmallOnPrimaryContainerBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallDMSansBluegray400 =>
      theme.textTheme.titleSmall!.dMSans.copyWith(
        color: appTheme.blueGray400,
      );
  static get titleMediumRed700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red700,
      );
  static get titleSmallGreen600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.green600,
      );
  static get titleLargePoppinsPrimaryContainer =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: getFontSize(
          20,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumDMSansGray700Medium =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.gray700,
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray500,
      );
  static get titleSmallBluegray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumBlack900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallOnPrimaryContainerSemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumDMSansGray700 =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(
          18,
        ),
      );
  static get titleSmallDMSansBluegray400_1 =>
      theme.textTheme.titleSmall!.dMSans.copyWith(
        color: appTheme.blueGray400,
      );
  static get titleMediumDMSansOnPrimaryContainer =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPoppinsPrimaryContainer =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallDMSansGray700 =>
      theme.textTheme.titleSmall!.dMSans.copyWith(
        color: appTheme.gray700,
      );
  static get titleMediumMetropolisOnPrimary =>
      theme.textTheme.titleMedium!.metropolis.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsPrimaryContainer =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleLargePoppinsPrimary =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          20,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsOnPrimaryContainer =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPoppinsPink300 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.pink300,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallDMSansDeeppurpleA200 =>
      theme.textTheme.titleSmall!.dMSans.copyWith(
        color: appTheme.deepPurpleA200,
      );
  static get titleMedium18_1 => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          18,
        ),
      );
  static get titleSmallRed700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red700,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleMediumPoppinsOnPrimaryContainer =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPoppinsPrimary =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack90018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(
          18,
        ),
      );
  static get titleSmallPoppinsOnPrimaryContainerSemiBold =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsBluegray300 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.blueGray300,
        fontWeight: FontWeight.w700,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          18,
        ),
      );
  static get titleMediumGray500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  // Body text style
  static get bodySmallMetropolisGray50011 =>
      theme.textTheme.bodySmall!.metropolis.copyWith(
        color: appTheme.gray500,
        fontSize: getFontSize(
          11,
        ),
      );
  static get bodySmallMetropolisGray500 =>
      theme.textTheme.bodySmall!.metropolis.copyWith(
        color: appTheme.gray500,
      );
  static get bodySmallPoppinsOnPrimaryContainer =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: getFontSize(
          12,
        ),
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodySmallPoppinsOnPrimaryContainer10 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.53),
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallGray900_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray900,
      );
  static get bodySmall12_1 => theme.textTheme.bodySmall!.copyWith(
        fontSize: getFontSize(
          12,
        ),
      );
  static get bodyLargeGray500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray500,
      );
  static get bodySmallGray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray900,
      );
  static get bodySmallRed700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.red700,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallDeeporangeA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.deepOrangeA700,
      );
  static get bodySmallMetropolisOnPrimary =>
      theme.textTheme.bodySmall!.metropolis.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: getFontSize(
          11,
        ),
      );
  static get bodyMediumDMSansBluegray400 =>
      theme.textTheme.bodyMedium!.dMSans.copyWith(
        color: appTheme.blueGray400,
        fontSize: getFontSize(
          13,
        ),
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallPoppinsPrimaryContainer12 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: getFontSize(
          12,
        ),
      );
  static get bodySmallPoppinsPrimaryContainer10 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodyMediumGray900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900.withOpacity(0.64),
      );
  static get bodySmallPoppinsBluegray300 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray300,
        fontSize: getFontSize(
          12,
        ),
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: getFontSize(
          12,
        ),
      );
  static get bodyMediumGray800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray800,
      );
  static get bodySmallPoppinsBluegray30010 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray300,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallPoppinsBluegray30012 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray300,
        fontSize: getFontSize(
          12,
        ),
      );
  static get bodySmallMetropolisDeeporangeA700 =>
      theme.textTheme.bodySmall!.metropolis.copyWith(
        color: appTheme.deepOrangeA700,
        fontSize: getFontSize(
          11,
        ),
      );
  static get bodySmallPoppinsPrimaryContainer =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: getFontSize(
          12,
        ),
      );
  // Display text style
  static get displayMediumOnPrimaryContainer =>
      theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: getFontSize(
          48,
        ),
        fontWeight: FontWeight.w900,
      );
  static get displaySmallBlack900 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.black900,
      );
  static get displaySmallRed700 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.red700,
      );
  static get displaySmallOnPrimaryContainer_1 =>
      theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get displaySmallOnPrimaryContainer =>
      theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w900,
      );
  // Label text style
  static get labelMediumMetropolisOnPrimaryContainerSemiBold_1 =>
      theme.textTheme.labelMedium!.metropolis.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get labelLargeDMSansDeeppurpleA200 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.deepPurpleA200,
        fontSize: getFontSize(
          13,
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeDMSansBluegray400 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.blueGray400,
        fontSize: getFontSize(
          13,
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumOnPrimaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get labelLargeBluegray300 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray300,
      );
  static get labelMediumMetropolisRed700 =>
      theme.textTheme.labelMedium!.metropolis.copyWith(
        color: appTheme.red700,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeIndigoA200_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigoA200,
      );
  static get labelLargeIndigoA200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigoA200,
      );
  static get labelMediumMetropolisGray900 =>
      theme.textTheme.labelMedium!.metropolis.copyWith(
        color: appTheme.gray900,
        fontSize: getFontSize(
          11,
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimary_1 => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumMetropolisGray500 =>
      theme.textTheme.labelMedium!.metropolis.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimaryContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get labelLargeBluegray300SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray300,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumMetropolisOnPrimaryContainer =>
      theme.textTheme.labelMedium!.metropolis.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get labelLargeErrorContainer_1 => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumMetropolisOnPrimaryContainerSemiBold =>
      theme.textTheme.labelMedium!.metropolis.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: getFontSize(
          11,
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBluegray300 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray300,
      );
  // Headline text style
  static get headlineSmallMetropolisSemiBold =>
      theme.textTheme.headlineSmall!.metropolis.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get headlineSmallMetropolisRegular =>
      theme.textTheme.headlineSmall!.metropolis.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallMetropolis =>
      theme.textTheme.headlineSmall!.metropolis.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallMetropolisGray900 =>
      theme.textTheme.headlineSmall!.metropolis.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get metropolis {
    return copyWith(
      fontFamily: 'Metropolis',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get lobster {
    return copyWith(
      fontFamily: 'Lobster',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
