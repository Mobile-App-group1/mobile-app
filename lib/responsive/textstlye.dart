import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

gettextstylebg(BuildContext context) {
  return TextStyle(
      fontSize: ResponsiveValue(context,
              conditionalValues: [
                Condition.equals(name: MOBILE, value: 18.0),
                Condition.equals(name: TABLET, value: 20.0),
                Condition.equals(name: DESKTOP, value: 22.0),
              ],
              defaultValue: 18.0)
          .value,
      color: Colors.black26,
      fontWeight: FontWeight.w500);
}

gettextstyltital(BuildContext context) {
  return TextStyle(
      fontSize: ResponsiveValue(context,
              conditionalValues: [
                Condition.equals(name: MOBILE, value: 18.0),
                Condition.equals(name: TABLET, value: 20.0),
                Condition.equals(name: DESKTOP, value: 22.0),
              ],
              defaultValue: 18.0)
          .value,
      color: Colors.black,
      fontWeight: FontWeight.w500);
}

gettextstylblackdesription(BuildContext context) {
  return TextStyle(
    fontSize: ResponsiveValue(context,
            conditionalValues: [
              Condition.equals(name: MOBILE, value: 14.0),
              Condition.equals(name: TABLET, value: 16.0),
              Condition.equals(name: DESKTOP, value: 18.0),
            ],
            defaultValue: 14.0)
        .value,
    color: Colors.black,
  );
}

gettextstylblack(BuildContext context) {
  return TextStyle(
    fontSize: ResponsiveValue(context,
            conditionalValues: [
              Condition.equals(name: MOBILE, value: 14.0),
              Condition.equals(name: TABLET, value: 16.0),
              Condition.equals(name: DESKTOP, value: 18.0),
            ],
            defaultValue: 18.0)
        .value,
    color: Colors.black26,
  );
}

gettextstylewhite(BuildContext context) {
  return TextStyle(
      fontSize: ResponsiveValue(context,
              conditionalValues: [
                Condition.equals(name: MOBILE, value: 18.0),
                Condition.equals(name: TABLET, value: 20.0),
                Condition.equals(name: DESKTOP, value: 22.0),
              ],
              defaultValue: 18.0)
          .value,
      color: Colors.white,
      fontWeight: FontWeight.w500);
}

gettextstylewhitesmaill(BuildContext context) {
  return TextStyle(
    fontSize: ResponsiveValue(context,
            conditionalValues: [
              Condition.equals(name: MOBILE, value: 14.0),
              Condition.equals(name: TABLET, value: 16.0),
              Condition.equals(name: DESKTOP, value: 18.0),
            ],
            defaultValue: 14.0)
        .value,
    color: Colors.white,
  );
}

gettextstyleb(BuildContext context) {
  return TextStyle(
    fontSize: ResponsiveValue(context,
            conditionalValues: [
              Condition.equals(name: MOBILE, value: 14.0),
              Condition.equals(name: TABLET, value: 16.0),
              Condition.equals(name: DESKTOP, value: 18.0),
            ],
            defaultValue: 14.0)
        .value,
    color: Colors.white,
  );
}

gettextstylewhitebold(BuildContext context) {
  return TextStyle(
      fontSize: ResponsiveValue(context,
              conditionalValues: [
                Condition.equals(name: MOBILE, value: 30.0),
                Condition.equals(name: TABLET, value: 35.0),
                Condition.equals(name: DESKTOP, value: 40.0),
              ],
              defaultValue: 30.0)
          .value,
      color: Colors.white,
      fontWeight: FontWeight.bold);
}

gettextstyleblue(BuildContext context) {
  return TextStyle(
      fontSize: ResponsiveValue(context,
              conditionalValues: [
                Condition.equals(name: MOBILE, value: 18.0),
                Condition.equals(name: TABLET, value: 20.0),
                Condition.equals(name: DESKTOP, value: 22.0),
              ],
              defaultValue: 18.0)
          .value,
      color: Colors.blue[400],
      fontWeight: FontWeight.w500);
}

gettextstylebluebold(BuildContext context) {
  return TextStyle(
      fontSize: ResponsiveValue(context,
              conditionalValues: [
                Condition.equals(name: MOBILE, value: 18.0),
                Condition.equals(name: TABLET, value: 20.0),
                Condition.equals(name: DESKTOP, value: 22.0),
              ],
              defaultValue: 16.0)
          .value,
      color: Colors.blue[900],
      fontWeight: FontWeight.bold);
}

gettextstyleblueboldunderline(BuildContext context) {
  return TextStyle(
      fontSize: ResponsiveValue(context,
              conditionalValues: [
                Condition.equals(name: MOBILE, value: 18.0),
                Condition.equals(name: TABLET, value: 20.0),
                Condition.equals(name: DESKTOP, value: 22.0),
              ],
              defaultValue: 16.0)
          .value,
      color: Colors.blue[900],
      decoration: TextDecoration.underline,
      fontWeight: FontWeight.bold);
}

gettextstylered(BuildContext context) {
  return TextStyle(
      fontSize: ResponsiveValue(context,
              conditionalValues: [
                Condition.equals(name: MOBILE, value: 16.0),
                Condition.equals(name: TABLET, value: 18.0),
                Condition.equals(name: DESKTOP, value: 20.0),
              ],
              defaultValue: 16.0)
          .value,
      color: Colors.red,
      fontWeight: FontWeight.w400);
}

gettextstylebluelogo(BuildContext context) {
  return TextStyle(
    fontSize: ResponsiveValue(context,
            conditionalValues: [
              Condition.equals(name: MOBILE, value: 16.0),
              Condition.equals(name: TABLET, value: 18.0),
              Condition.equals(name: DESKTOP, value: 20.0),
            ],
            defaultValue: 16.0)
        .value,
    color: Colors.blue,
  );
}

gettextstylegret(BuildContext context) {
  return TextStyle(
    fontSize: ResponsiveValue(context,
            conditionalValues: [
              Condition.equals(name: MOBILE, value: 18.0),
              Condition.equals(name: TABLET, value: 20.0),
              Condition.equals(name: DESKTOP, value: 22.0),
            ],
            defaultValue: 18.0)
        .value,
    color: Colors.grey[600],
  );
}

gettextstylwhite(BuildContext context) {
  return TextStyle(
    fontSize: ResponsiveValue(context,
            conditionalValues: [
              Condition.equals(name: MOBILE, value: 14.0),
              Condition.equals(name: TABLET, value: 16.0),
              Condition.equals(name: DESKTOP, value: 18.0),
            ],
            defaultValue: 14.0)
        .value,
    color: Colors.white,
  );
}

gettextstylwhiteimg(BuildContext context) {
  return TextStyle(
      fontSize: ResponsiveValue(context,
              conditionalValues: [
                Condition.equals(name: MOBILE, value: 12.0),
                Condition.equals(name: TABLET, value: 16.0),
                Condition.equals(name: DESKTOP, value: 18.0),
              ],
              defaultValue: 12.0)
          .value,
      color: Colors.white,
      fontWeight: FontWeight.bold);
}
