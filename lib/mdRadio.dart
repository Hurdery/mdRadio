import 'package:flutter/material.dart';

class mdRadio extends StatefulWidget {
  mdRadio(
      {Key? key, this.rTitle,this.initialIndex,this.selectIndex,this.iconMargin,this.isLeadingIcon,this.callback})
      : super(key: key);

  final String? rTitle;
  final int? initialIndex;
  final int? selectIndex;
  final double? iconMargin; // icon是否在左边
  final bool? isLeadingIcon; // icon拒文字距离
  final callback;

  @override
  _mdRadioState createState() => _mdRadioState();
}

class _mdRadioState extends State<mdRadio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:widget.isLeadingIcon == true ?
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(width: 60,height: 60,child: IconButton(
            iconSize: 40,
            icon:widget.initialIndex == widget.selectIndex ? Icon(Icons.favorite,color: Colors.black) : Icon(Icons.favorite_border),
              onPressed: (){
                widget.callback(widget.initialIndex);
              },),),
          SizedBox(width: widget.iconMargin,),
          Text(widget.rTitle!,style: widget.initialIndex == widget.selectIndex ?
            TextStyle(fontSize: 50,color: Colors.black,fontWeight: FontWeight.w600) : TextStyle(fontSize: 35,color:Colors.red,
              fontWeight: FontWeight.w400),),
        ],
      ) : Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.rTitle!,style: widget.initialIndex == widget.selectIndex ?
          TextStyle(fontSize: 50,color: Colors.black,fontWeight: FontWeight.w600) : TextStyle(fontSize: 35,color:Colors.red,
              fontWeight: FontWeight.w400),),
          SizedBox(width: widget.iconMargin,),
          Container(width: 60,height: 60,child: IconButton(
            iconSize: 40,
            icon:widget.initialIndex == widget.selectIndex ? Icon(Icons.favorite,color: Colors.red,) : Icon(Icons.favorite_border),
            onPressed: (){
              widget.callback(widget.initialIndex);
            },),),
        ],
      ),

    );
  }
}
