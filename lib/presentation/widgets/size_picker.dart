import 'package:coffee_app_ui/presentation/widgets/appbar_container.dart';
import 'package:flutter/material.dart';

class SizePicker extends StatefulWidget {
  const SizePicker({super.key});

  @override
  State<SizePicker> createState() => _SizePickerState();
}

class _SizePickerState extends State<SizePicker> {
  int _selectedIndex = 0;
  final List<String>  _sizeItem =
  [
    "S",
    "M",
    "L"
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.separated(
        shrinkWrap: true,
        primary: false,
        scrollDirection: Axis.horizontal,
        itemCount: _sizeItem.length,
        separatorBuilder: (_,__){
          return const SizedBox(width: 25);
        },
        itemBuilder: (context,index) {
          return GestureDetector(
            onTap: (){
              setState(() {
                _selectedIndex = index;
              });
            },
            child: SizedBox(
              height: 40,
              width: 90,
              child: AppBarContainer(
                borderColor: _selectedIndex == index
                                 ? Colors.orange
                                 : Colors.grey.withOpacity(0.4),
                child: Center(
                  child: Text(
                    _sizeItem[index],
                    style:  TextStyle(
                        color: _selectedIndex == index
                                    ? Colors.orange
                                    : Colors.white,
                        fontWeight: _selectedIndex == index
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
