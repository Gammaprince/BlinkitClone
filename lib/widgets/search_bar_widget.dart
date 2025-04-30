import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  final _controller = TextEditingController();
  var isControllerEmpty = true;
  @override
  void initState() {
    _controller.addListener(() {
      _updateControllerEmptyState();
    });
    _updateControllerEmptyState();
    super.initState();
  }

  void _updateControllerEmptyState() {
    if (isControllerEmpty != _controller.text.isEmpty) {
      setState(() {
        isControllerEmpty = _controller.text.isEmpty;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child:  Stack(
        children: [
          TextField(
            controller: _controller,
          decoration: const InputDecoration(
            icon: Icon(Icons.search),
            border: InputBorder.none,
            hintText: "Search Anything"
          ),
        )],
      )
    );
  }
}