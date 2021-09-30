import 'package:flutter/material.dart';

abstract class COLOR {
  static final Color primary = Color.fromRGBO(18, 129, 129, 1.0);
  static final Color secondary = Color.fromRGBO(104, 113, 121, 1.0);

  static final Color success = Color.fromRGBO(39, 161, 67, 1.0);
  static final Color danger = Color.fromRGBO(218, 53, 68, 1.0);
  static final Color warning = Color.fromRGBO(253, 191, 7, 1.0);
  static final Color info = Color.fromRGBO(23, 161, 183, 1.0);

  static final Color light = Color.fromRGBO(248, 249, 250, 1.0);
  static final Color dark = Color.fromRGBO(52, 58, 64, 1.0);
}

abstract class REGEX {
  static final RegExp SHORT_DATE = new RegExp(
      r'^(0?[1-9]|[12][0-9]|3[01])/(0?[1-9]|1[012])/\d{4}$'); // 20/12/2017
  static final RegExp LETTERS_NUMBERS = new RegExp(r'^[a-zA-Z0-9]*$'); // aA 1
  static final RegExp LETTERS_NUMBERS_MAX_200 =
      new RegExp(r'^[a-zA-Z0-9]*$'); // aA 1
  static final RegExp DOCUMENTO_TIPO = new RegExp(r'^[0-9]{8}$'); // 0 a 9
  static final RegExp LETTERS_NUMBERS_SPACE =
      new RegExp(r'^[a-zA-Z0-9 ]*$'); // aA 1
  static final RegExp RUC_REGEX = new RegExp(r'^[0-9]{11}$');
  static final RegExp CELULAR_REGEX = new RegExp(r'^[0-9]{9}$');
  static final RegExp TELEFONO_REGEX = new RegExp(r'^[0-9]{7}$');
  static final RegExp CODIGO_REGEX = new RegExp(r'^[a-zA-Z0-9]+$');
  static final RegExp PATTERN_EMAIL =
      new RegExp(r'^\w+([.-]?\w+)*@\w+([.-]?\w+)*(\.\w{2,6})+$');
  static final RegExp PATTERN_CUENTA_BANCARIA = new RegExp(r'^[0-9]{18}$');
  static final RegExp PATTERN_CCI = new RegExp(r'^[0-9]{20}$');
  static final RegExp PATTERN_DECIMAL = new RegExp(
      r'^([0-9]?[0-9](\.[0-9][0-9]?)?)|([0-9]?[0-9]?(\.[0-9][0-9]?))$"');
}

abstract class FORMATO_FECHA {
  static final String DIA_SIN_CERO = 'd';
  static final String MES_SIN_CERO = 'M';
  static final String ANIO = 'yyyy';
  static final String FECHA = 'dd/MM/yyyy';
  static final String FECHA_HORA = 'dd/MM/yyyy hh:mm aa';
  static final String WEB = 'DD/MM/YYYY';
  static final String SQL = 'yyyy-MM-dd';
}
