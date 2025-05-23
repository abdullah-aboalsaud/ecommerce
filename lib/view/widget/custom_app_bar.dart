import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String titleAppBar ;
  final void Function()? onPressedIcon ; 
  final void Function()? onPressedSearch ; 
  const CustomAppBar({super.key, required this.titleAppBar, this.onPressedIcon, this.onPressedSearch});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(children: [
        Expanded(
            child: TextFormField(
          decoration: InputDecoration(
              prefixIcon: IconButton(icon: Icon(Icons.search) , onPressed: onPressedSearch),
              hintText: titleAppBar,
              hintStyle: TextStyle(fontSize: 18),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)),
              filled: true,
              fillColor: Colors.grey[200]),
        )),
        SizedBox(width: 10),
        Container(  
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
          width: 60,
          padding: EdgeInsets.symmetric(vertical: 8),
          child: IconButton(
              onPressed: onPressedIcon,
              icon: Icon(
                Icons.notifications_active_outlined,
                size: 30,
                color: Colors.grey[600],
              )),
        )
      ]),
    );
  }
}
