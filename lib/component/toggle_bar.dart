import 'dart:collection';
import 'dart:developer' as dev;
import 'package:flutter/material.dart';

class ToggleBar extends StatefulWidget {
  /// TextStyle for the labels.
  final TextStyle labelTextStyle;

  /// Background color of the toggle bar.
  final Color? backgroundColor;

  /// Background border of the toggle bar.
  final BoxBorder? backgroundBorder;

  /// Color of the selected tab.
  final Color selectedTabColor;

  /// Color of text in the selected tab. This will override [color] in [labelTextStyle].
  final Color selectedTextColor;

  /// Color of text in unselected tabs. If the tab is selected, text color will be overriden by [selectedTextColor].
  final Color textColor;

  /// Labels to be displayed as tabs in the toggle bar.
  final List<String>? labels;

  /// Callback function which returns the index of the currently selected tab.
  final Function(int)? onSelectionUpdated;

  final BoxBorder? selectedTabBorder;

  /// Border radius of the bar and selected tab indicator.
  final double borderRadius;
  final double? width;
  final double? height;
  ToggleBar(
      {@required this.labels,
      this.backgroundColor = Colors.black,
      this.backgroundBorder,
      this.selectedTabColor = Colors.deepPurple,
      this.selectedTextColor = Colors.white,
      this.textColor = Colors.white,
      this.labelTextStyle = const TextStyle(),
      this.onSelectionUpdated,
      this.selectedTabBorder,
      this.width,
      this.height,
      this.borderRadius = 50});

  @override
  State<StatefulWidget> createState() {
    return _ToggleBarState();
  }
}

class _ToggleBarState extends State<ToggleBar> {
  LinkedHashMap<String, bool> _hashMap = LinkedHashMap();
  ValueNotifier<int> _selectedIndex = ValueNotifier(0);

  @override
  void initState() {
    // dev.log('toggle init called', name: 'Toggle Bar');

    _hashMap = LinkedHashMap.fromIterable(widget.labels!,
        value: (value) => value = false);
    _hashMap[widget.labels![0]] = true;
    // addLabelWidget();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // dev.log('toggle build called ', name: 'Toggle Bar');

    return Container(
      height: widget.height,
      width: widget.width,
      constraints: BoxConstraints(
        maxWidth: widget.width!,
      ),
      padding: EdgeInsets.all(
        2.0,
      ),
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        border: widget.backgroundBorder,
        borderRadius: BorderRadius.circular(widget.borderRadius),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: _hashMap.entries.map(
          (label) {
            var keyIndex = widget.labels!.indexOf(label.key);
            return Expanded(
              flex: 1,
              child: ValueListenableBuilder(
                valueListenable: _selectedIndex,
                builder: (context, index, _) => GestureDetector(
                  // key: ValueKey(_hashMap.keys.elementAt(0)),
                  child: Container(
                    width: widget.width! / widget.labels!.length,
                    padding: EdgeInsets.zero,
                    child: Center(
                      child: Text(
                        label.key,
                        textAlign: TextAlign.center,
                        style: widget.labelTextStyle.apply(
                          color: label.value
                              ? widget.selectedTextColor
                              : widget.textColor,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: label.value ? widget.selectedTabColor : null,
                      borderRadius: label.value
                          ? BorderRadius.circular(widget.borderRadius)
                          : null,
                      border: label.value ? widget.selectedTabBorder : null,
                      // boxShadow: label.value ? kElevationToShadow[1] : null,
                    ),
                  ),
                  onHorizontalDragUpdate: (dragUpdate) async {
                    // print(dragUpdate.globalPosition.toString());
                    int calculatedIndex = ((widget.labels!.length *
                                    (dragUpdate.localPosition.dx /
                                        widget.width!))
                                .round() -
                            1)
                        .clamp(0, widget.labels!.length - 1);

                    if (calculatedIndex != index) {
                      _updateSelection(calculatedIndex);
                    }
                  },

                  onTap: () async {
                    dev.log('toggle tap called ${_selectedIndex.value}',
                        name: 'Toggle Bar');
                    if (keyIndex != index) {
                      _updateSelection(keyIndex);
                    }
                  },
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }

  _updateSelection(int index) {
    setState(() {
      _selectedIndex.value = index;
      widget.onSelectionUpdated!(_selectedIndex.value);
      _hashMap.updateAll((label, selected) => selected = false);
      _hashMap[_hashMap.keys.elementAt(index)] = true;
      // dev.log('toggle update called $index', name: 'Toggle Bar');
    });
  }

  @override
  void dispose() {
    super.dispose();
  }
}

extension FicListExtension<T> on Map {
  /// Maps each element of the list.
  /// The [map] function gets both the original [item] and its [index].
  Iterable<E> mapIndexed<E>(E Function(int index, T item) map) sync* {
    for (var index = 0; index < length; index++) {
      yield map(index, this[index]);
    }
  }
}
