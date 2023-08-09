import 'package:flutter/material.dart';
import 'package:new_app/presentation/resources/color_manager.dart';
import 'package:new_app/presentation/resources/font_manager.dart';
import 'package:new_app/presentation/resources/values_manager.dart';

ThemeData getApplicationTheme(){
  return ThemeData(
    //main colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.lightPrimary,
    //cardview theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),
    //appbar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.lightPrimary,
      titleTextStyle: TextStyle(
        fontSize: FontSize.s16,
        color: ColorManager.white,
        fontFamily: FontConstants.fontFamily,
        fontWeight: FontWeight.w400,
      )
    ),
    //button theme
    buttonTheme: ButtonThemeData(
      shape: StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.lightPrimary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(
          fontSize: FontSize.s17,
          color: ColorManager.white,
          fontFamily: FontConstants.fontFamily,
          fontWeight: FontWeight.w400,
        ),
        primary: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        )
      )
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: FontSize.s22,
        color: ColorManager.white,
        fontFamily: FontConstants.fontFamily,
        fontWeight: FontWeight.w400,
      ),
      headlineLarge:  TextStyle(
        fontSize: FontSize.s16,
        color: ColorManager.darkGrey,
        fontFamily: FontConstants.fontFamily,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        fontSize: FontSize.s17,
        color: ColorManager.lightGrey,
        fontFamily: FontConstants.fontFamily,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: TextStyle(
        fontSize: FontSize.s17,
        color: ColorManager.grey1,
        fontFamily: FontConstants.fontFamily,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        fontSize: FontSize.s17,
        color: ColorManager.grey,
        fontFamily: FontConstants.fontFamily,
        fontWeight: FontWeight.w400,
      ),
    ),
    //input decoration theme (textformfield)
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(AppPadding.p8),
      //hint style
      hintStyle: TextStyle(
        fontSize: FontSize.s14,
        color: ColorManager.grey,
        fontFamily: FontConstants.fontFamily,
        fontWeight: FontWeight.w400,
      ),
      //label style
      labelStyle: TextStyle(
        fontSize: FontSize.s14,
        color: ColorManager.grey,
        fontFamily: FontConstants.fontFamily,
        fontWeight: FontWeight.w400,
      ),
      //error style
      errorStyle: TextStyle(
        fontSize: FontSize.s17,
        color: ColorManager.error,
        fontFamily: FontConstants.fontFamily,
        fontWeight: FontWeight.w400,
      ),
      //enable border
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primary,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primary,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      )
    )
  );
}