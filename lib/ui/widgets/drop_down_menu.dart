import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';


class CustomDropDownMenu extends StatefulWidget {

  final String text;
  final List<String> items;

  const CustomDropDownMenu({Key? key, 
    required this.text,
    required this.items,})
      : super(key: key);

  @override
  State<CustomDropDownMenu> createState() => _CustomDropDownMenuState();
}


String? selectedValue;

class _CustomDropDownMenuState extends State<CustomDropDownMenu> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2(
      decoration: InputDecoration(
        //Add isDense true and zero Padding.
        //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
        isDense: true,
        contentPadding: EdgeInsets.zero,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        //Add more decoration as you want here
        //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
      ),
      isExpanded: true,
      hint:  Text(
          widget.text,
          style: const TextStyle(fontSize: 14),
    ),
    items: widget.items
        .map((item) => DropdownMenuItem<String>(
    value: item,
    child: Text(
    item,
    style: const TextStyle(
    fontSize: 14,
    ),
    ),
    ))
        .toList(),
    validator: (value) {
    if (value == null) {
    return 'Please select gender.';
    }
    return null;
    },
    onChanged: (value) {
    //Do something when changing the item if you want.
    },
    onSaved: (value) {
    selectedValue = value.toString();
    },
    buttonStyleData: const ButtonStyleData(
    height: 60,
    padding: EdgeInsets.only(left: 20, right: 10),
    ),
    iconStyleData: const IconStyleData(
    icon: Icon(
    Icons.arrow_drop_down,
    color: Colors.black45,
    ),
    iconSize: 30,
    ),
    dropdownStyleData: DropdownStyleData(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    )
    ,
    )
    ,
    );


  }
}
