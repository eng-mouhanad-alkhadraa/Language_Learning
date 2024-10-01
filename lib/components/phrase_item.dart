import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';
PhraseItemState? activeButton;

class PhraseItem extends StatefulWidget {
  const PhraseItem({
    Key? key,
    required this.phrase,
    required this.color,
    required this.itemType,
  }) : super(key: key);
  final Item phrase;
  final Color color;
  final String itemType;

  @override
  State<PhraseItem> createState() => PhraseItemState();
}

AudioPlayer? currentPlayer;
class PhraseItemState extends State<PhraseItem> {
  IconData _icon = Icons.play_arrow_rounded;

  @override
  void dispose() {
    super.dispose();
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
            color: const Color(0xffFFFDE4),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.phrase.ArName,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  widget.phrase.enName,
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
                  currentPlayer = await player.play(widget.phrase.sound);
                  setState(() {
                    _icon = isSameButton
                        ? Icons.play_arrow_rounded
                        : Icons.pause_circle;
                  });
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
