// TextFormField item
import 'package:flutter/material.dart';
import 'package:tab_cash/Resource/Color_Manager.dart';

Widget TextFormWidget(
    {
      BuildContext? context,
    String? txt,
    IconData? icon,
    bool? password,
    TextEditingController? controller,
    void Function()? ontap}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      controller: controller,
      // لاخفاء واظهار النص
      obscureText: password!,
      cursorColor: ColorManager.GrayColor,
      // عشان اتاكد ان المستخدم دخل البيانات قبل الانتقال للصفحه التاليه
      validator: (value) {
        if (value!.isEmpty)
          return "$txt can't be empty";
        else
          return null;
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorManager.LightGrayColor,
        //استايل الكلام الخفي
        hintText: "$txt",
        hintStyle: Theme.of(context!).textTheme.bodyText2,
        // الايكون الي في الاخر
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: (password)
              // ايكون العين عشان لو ضغط يظهر الكلام
              ? InkWell(
                  onTap: ontap,
                  child: Icon(
                    icon,
                    size: 30,
                    color: ColorManager.DarkGrayColor,
                  ),
                )
              : InkWell(
              onTap: ontap,
                child: Icon(
                    icon,
                    size: 30,
                    color: ColorManager.DarkGrayColor,
                  ),
              ),
        ),
//حاله الفورم لو ضغط عليها
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.DarkGrayColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
// حاله الفورم لو مضغطش
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.DarkGrayColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    ),
  );
}

Widget TextFormWithoutIcon({
  BuildContext? context,
  String? txt,
  TextEditingController? controller,
}) {
  return Padding(
    padding:
        const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0, top: 5.0),
    child: TextFormField(
      cursorColor: ColorManager.GrayColor,
      controller: controller,
      validator: (value) {
        if (value!.isEmpty)
          return "$txt can't be empty";
        else
          return null;
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorManager.LightGrayColor,

        //استايل الكلام الخفي
        hintText: "$txt",
        hintStyle: Theme.of(context!).textTheme.bodyText2,

        //حاله الفورم لو ضغط عليها
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.DarkGrayColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        // حاله الفورم لو مضغطش
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.DarkGrayColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    ),
  );
}

Widget TextFormWithoutBord (
{
  BuildContext? context,
  String? hint ,
  TextEditingController? controller,
}
    ){
  return  TextFormField(
      validator: (value) {
        if (value!.isEmpty)
          return "  ";
        else
          return null;
      },
      keyboardType: TextInputType.number ,
      controller: controller,
      cursorColor: ColorManager.GrayColor,
      style: Theme.of(context!).textTheme.bodyText1,
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorManager.LightGrayColor,
        //استايل الكلام الخفي
        hintText: " ${ hint ?? " "}",
        hintStyle: Theme.of(context!).textTheme.bodyText2,
        //حاله الفورم لو ضغط عليها
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.LightGrayColor,
          ),
        ),
        // حاله الفورم لو مضغطش
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.LightGrayColor,
          ),
        ),
      )
  );



}