import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';
import 'dart:async';

ListItemState? activeButton;

class ListItem extends StatefulWidget {
  const ListItem({
    Key? key,
    required this.number,
    required this.color,
    required this.itemType,
  }) : super(key: key);
  final Item number;
  final Color color;
  final String itemType;
  @override
  ListItemState createState() => ListItemState();
} 
AudioPlayer? currentPlayer;
class ListItemState extends State<ListItem> {
  IconData _icon = Icons.play_arrow_rounded;
  Timer? _timer;
  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
    if (activeButton == this) {
      activeButton = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: widget.color,
      child: Row(
        children: [
          Container(
              height: 200,
              width: 150,
              color: Colors.white,
              child: Image.asset(widget.number.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.number.ArName,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  widget.number.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () async {
                try {
                  if (currentPlayer != null) {
                    await currentPlayer!.stop();
                  }
                  if (activeButton != null) {
                    activeButton!.setState(() {
                      activeButton!._icon = Icons.play_arrow_rounded;
                    });
                  }
                  bool isSameButton = activeButton == this;
                  activeButton = this;
                  AudioCache player =
                      AudioCache(prefix: 'assets/sounds/${widget.itemType}/');
                  currentPlayer = await player.play(widget.number.sound);
                  if (mounted) {
                    setState(() {
                      _icon = isSameButton
                          ? Icons.play_arrow_rounded
                          : Icons.pause_circle;
                    });
                  }
                } catch (ex) {
                  print(ex);
                }
              },
              icon: Icon(
                _icon,
                size: 40,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

