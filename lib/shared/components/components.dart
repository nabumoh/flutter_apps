import 'package:flutter/material.dart';

/*
Reusable Components Goals
* 1. timing
* 2. refactor
* 3. quality
* */

//* Login Screen Button */
Widget defaultButtton({
  // default values for button once initiated .
  required String text,
  bool isUpperCase = true,
  double width = double.infinity,
  Color background = Colors.blue,
  double radius = 10.0,
  required Function()? function,
}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

//* Login Screen Form Field */
Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  required String label,
  required IconData prefix,
  IconData? suffix,
  bool isPassword = false,
  bool isClickable = true,
  required Function(String value) validate,
  Function(String)? onSubmit,
  Function(String)? onChanged,
  Function()? onTap,
  void Function()? suffixPressed,
}) =>
    TextFormField(
      keyboardType: type,
      // to encode password
      obscureText: isPassword,
      enabled: isClickable,
      controller: controller,
      onFieldSubmitted: onSubmit,
      onChanged: onChanged,
      onTap: onTap,
      /* validator can be used only with Form Widget */
      validator: (value) {
        return validate(value!);
      },
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(prefix),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(suffix),
              )
            : null,
        border: const OutlineInputBorder(),
      ),
    );

Widget buildTaskItem(Map model) => Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40.0,
            child: Text(
              '${model['time']}',
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${model['title']}',
                /*to avoid RenderFlex overflowed */
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 18.0),
              ),
              const SizedBox(
                height: 7.0,
              ),
              Text(
                '${model['date']}',
                style: const TextStyle(fontSize: 12.0),
              ),
            ],
          ),
        ],
      ),
    );




