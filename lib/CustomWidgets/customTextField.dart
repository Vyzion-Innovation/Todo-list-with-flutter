import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  final String? labelText;
  final String? hintText;
  final String? OptionalText;
  final String? rightText;

  final Widget? icon;
  final TextInputType? input;
  final TextEditingController? controller;
  final Function()? onTap;
  final Function(String)? onChanged;
  final Widget? suffix;
  final int? MaxLine;
  final int? maxLength;
  final Color? fillColor;
  final BorderSide? borderSide;
  final List<TextInputFormatter>? inputFormatters;
  FormFieldValidator<String>? validator;
  final Widget? prefixIcon;
  bool readOnly;
  double Vertical;
  bool PrimeMember;
  final FocusNode? focusNode;
  bool obscureText;

  CustomTextField({
    this.labelText,
    this.icon,
    this.input,
    this.readOnly = false,
    this.obscureText = false,
    this.suffixVisibility = false,
    this.hintText,
    this.controller,
    this.onTap,
    this.MaxLine,
    this.Vertical = 0.0,
    this.suffix,
    this.OptionalText,
    this.PrimeMember = false,
    this.maxLength,
    this.inputFormatters,
    this.validator,
    this.prefixIcon,
    this.fillColor = Colors.black,
    this.borderSide = BorderSide.none,
    this.onChanged,
    this.rightText,
    this.focusNode,
  });
  bool suffixVisibility;

  @override
  State<CustomTextField> createState() => _CustomTextFiledState();
}

class _CustomTextFiledState extends State<CustomTextField> {
  toggle() {
    setState(() {
      widget.obscureText = !widget.obscureText;
    });
  }

  bool color = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          expands: false,
          focusNode: widget.focusNode,
          onChanged: widget.onChanged,
          readOnly: widget.readOnly,
          cursorColor: Colors.grey,
          inputFormatters: widget.inputFormatters,
          validator: widget.validator,
          maxLength: widget.maxLength,
          maxLines: widget.MaxLine,
          onTap: widget.onTap,
          controller: widget.controller,
          obscureText: widget.obscureText,
          keyboardType: widget.input,
          obscuringCharacter: '*',
          autovalidateMode: AutovalidateMode.onUserInteraction,
          style: const TextStyle(
              color: Colors.black, fontSize: 15, fontFamily: "poppoins"),
          decoration: InputDecoration(
              prefixIcon: widget.prefixIcon,
              counterText: '',
              contentPadding: const EdgeInsets.all(8),
              suffixIcon: widget.icon,
              // suffixText: widget.rightText,
              suffix: widget.suffixVisibility == false
                  ? widget.suffix
                  : InkWell(
                      onTap: toggle,
                      child: Text(
                        widget.obscureText ? 'SHOW' : 'HIDE',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color(0xff0096D4),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
              fillColor: widget.fillColor,
              filled: true,
              hintText: widget.hintText,
              hintStyle:
                  const TextStyle(color: Color(0xffC7C7CC), fontSize: 14),
              border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  borderSide: widget.borderSide!),
              focusedBorder: OutlineInputBorder(
                  borderSide: widget.borderSide!,
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              enabledBorder: OutlineInputBorder(
                  borderSide: widget.borderSide!,
                  borderRadius: const BorderRadius.all(Radius.circular(10)))),
        ),
      ],
    );
  }
}
