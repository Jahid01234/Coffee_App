import 'package:flutter/material.dart';

class CoffeeCategoryTypes extends StatefulWidget {
  const CoffeeCategoryTypes({super.key});

  @override
  State<CoffeeCategoryTypes> createState() => _CoffeeCategoryTypesState();
}

class _CoffeeCategoryTypesState extends State<CoffeeCategoryTypes> {

  int _selectedCoffeeIndex = 0;
  final List<String> _coffeeTypes = [
    "Cappuccino",
    "Cafe Latte",
    "Cafe Macchiato",
    "Espresso",
    "Flat White",
    "Latte",
    "Milk",
    "Black Coffee",
    "Cold Coffee",
    "Red Eye",
  ];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.separated(
          shrinkWrap: true,
          primary: false,
          scrollDirection: Axis.horizontal,
          itemCount: _coffeeTypes.length,
          separatorBuilder: (_,__){
            return const SizedBox(width: 15);
          },
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){
                _selectedCoffeeIndex = index;
                setState(() {});
              },
              child: Text(
                _coffeeTypes[index],
                style: TextStyle(
                  fontSize: 15,
                    color: _selectedCoffeeIndex == index
                              ? Colors.orange
                              : Colors.white,
                    fontWeight: _selectedCoffeeIndex == index
                                 ? FontWeight.bold
                                 : FontWeight.w500,
                ),
              ),
            );
          },
      ),
    );
  }
}
