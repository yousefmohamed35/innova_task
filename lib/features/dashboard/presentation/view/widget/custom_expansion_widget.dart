import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:invotask/core/widgets/expansion_up.dart';
import 'count_list_widget.dart';
import 'custom_divider.dart';
import 'custom_text_field.dart';

class CustomExpansionWidget extends StatefulWidget {
  const CustomExpansionWidget(
      {super.key, required this.title, required this.child, this.color});
  final Widget title;
  final Widget child;
  final Color? color;
  @override
  State<CustomExpansionWidget> createState() => _CustomExpansionWidgetState();
}

class _CustomExpansionWidgetState extends State<CustomExpansionWidget> {
  bool isExpanded = false;
  bool isSearched = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 0,
        color: widget.color ?? Colors.grey.shade300,
        child: ExpansionTile(
          shape: Border.all(color: Colors.transparent),
          onExpansionChanged: (ex) {
            setState(() {
              isExpanded = ex;
            });
          },
          title: isSearched
              ? SizedBox(
                  height: 24.h,
                  child: CustomTextField(
                    onTap: () {
                      setState(() {
                        isSearched = false;
                      });
                    },
                  ),
                )
              : widget.title,
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              isSearched
                  ? CountListWidget()
                  : Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isSearched = true;
                            });
                          },
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                        CustomDivider(),
                      ],
                    ),
              isExpanded
                  ? ExpansionUp()
                  : Icon(
                      Icons.expand_more,
                      color: Colors.black,
                    )
            ],
          ),
          children: [widget.child],
        ),
      ),
    );
  }
}
