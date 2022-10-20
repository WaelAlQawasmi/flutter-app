import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  String name;
  Color? colors;

  ListViewWidget({
   required this.name,
    this.colors
});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 15),
      itemExtent: 78,
      scrollDirection: Axis.vertical,
      reverse: false,
      shrinkWrap: true,
      children: [
        buildListTile(Icon(Icons.local_taxi)),
        buildListTile(Icon(Icons.local_taxi)),
        buildListTile(Icon(Icons.local_taxi)),
      ],
    );
  }

  ListTile buildListTile(Icon icon) {
    return ListTile(
      shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
          side: BorderSide(width: 1, color: Colors.black12)),
      leading: icon,
      title: Text("first trip"),
      subtitle: Text("jordan- amman"),
      trailing: Icon(Icons.info_outline),
      onTap: () {},

      tileColor: Colors.black12,
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.all(
      //     Radius.circular(15)
      //   )
      // ),
    );
  }
}
