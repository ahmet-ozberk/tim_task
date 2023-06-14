import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatefulWidget {
  final String? hintText;
  final TextEditingController? controller;
  final int? maxLines;
  final int? minLines;
  final Widget? leading;
  final Widget? trailing;
  final bool isPassword;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Function()? onTap;

  final void Function(String value)? onSubmitted;
  final void Function(String value)? onChanged;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final bool isEnable;

  const CustomTextField(
      {Key? key,
      this.hintText,
      this.controller,
      this.maxLines = 1,
      this.minLines,
      this.leading,
      this.trailing,
      this.keyboardType,
      this.textInputAction,
      this.isPassword = false,
      this.onTap,
      this.onSubmitted,
      this.onChanged,
      this.focusNode,
      this.inputFormatters,
      this.isEnable = true})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorWidth: 1,
      focusNode: widget.focusNode,
      controller: widget.controller,
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      onTap: widget.onTap?.call(),
      onSubmitted: widget.onSubmitted,
      enabled: widget.isEnable,
      onChanged: widget.onChanged,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      obscureText: widget.isPassword ? isVisible : false,
      inputFormatters: widget.inputFormatters,
      decoration: InputDecoration(
        hintText: widget.hintText,
        prefixIcon: widget.leading,
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () => setState(() => isVisible = !isVisible),
                icon: FaIcon(
                  isVisible ? FontAwesomeIcons.lock : FontAwesomeIcons.lockOpen,
                  size: 18,
                ),
              )
            : widget.trailing,
      ),
    );
  }
}
