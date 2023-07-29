import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_note_cubit/add_cubit.dart';
import 'package:notes/model/note_model.dart';

class ColorsItem extends StatelessWidget {
  const ColorsItem({super.key, required this.isActive, required this.color});

  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 38,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 34,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 36,
          );
  }
}

class ColorsList extends StatefulWidget {
  const ColorsList({super.key});

  @override
  State<ColorsList> createState() => _ColorsListState();
}

class _ColorsListState extends State<ColorsList> {
  int currentColor = 0;
  List<Color> colors = const [
    Color(0xffde1a1a),
    Color(0xff10846b),
    Color(0xffacbed8),
    Color(0xfff2d398),
    Color(0xffd78521),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () {
                currentColor = index;
                BlocProvider.of<AddNotesCubit>(context).color = colors[index];
                setState(() {});
              },
              child: ColorsItem(
                color: colors[index],
                isActive: currentColor == index,
              ),
            ),
          );
        },
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({
    super.key,
    required this.note,
  });

  final NoteModel note;
  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  late int currentColor;
  List<Color> colors = const [
    Color(0xffde1a1a),
    Color(0xff10846b),
    Color(0xffacbed8),
    Color(0xfff2d398),
    Color(0xffd78521),
  ];
  @override
  void initState() {
    super.initState();
    currentColor = colors.indexOf(Color(widget.note.color));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () {
                currentColor = index;
                widget.note.color = colors[index].value;
                setState(() {});
              },
              child: ColorsItem(
                color: colors[index],
                isActive: currentColor == index,
              ),
            ),
          );
        },
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
