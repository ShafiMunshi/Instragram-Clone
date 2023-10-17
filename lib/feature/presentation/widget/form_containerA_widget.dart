import 'package:flutter/material.dart';
import 'package:flutter_ui_1/const.dart';

class FormContainerWidget extends StatefulWidget {
  final Key? fieldKey;
  final bool? passwordField;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final FormFieldSetter<String>?onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>?onFieldSubmitted;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  const FormContainerWidget({super.key, this.fieldKey, this.passwordField, this.hintText, this.labelText, this.helperText, this.onSaved, this.validator, this.onFieldSubmitted, this.textInputType, this.controller});

  @override
  State<FormContainerWidget> createState() => _FormContainerWidgetState();
}

class _FormContainerWidgetState extends State<FormContainerWidget> {
  bool _obscureText=true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: secondaryColor.withOpacity(0.35),borderRadius: BorderRadius.circular(3))   ,
      child: TextFormField(
        // style: TextStyle(color:primaryColor)  ,
        controller: widget.controller,
        key: widget.key ,
        obscureText:widget.passwordField==true? _obscureText:false,
        onSaved: widget.onSaved,
        validator: widget.validator,
        onFieldSubmitted: widget.onFieldSubmitted,
        decoration: InputDecoration(
          fillColor: Colors.black,
          hintText: widget.hintText,
          hintStyle: TextStyle(color: secondaryColor),
          helperText: widget.helperText,
          filled: true,
          border: InputBorder.none,
          
          suffixIcon:widget.passwordField==true? GestureDetector(onTap: (){
            setState(() {
              _obscureText=!_obscureText;
            });
          },child:  _obscureText==true? Icon(Icons.visibility_off):Icon(Icons.visibility)):SizedBox(),
        ),
      ),
    );
  }
}