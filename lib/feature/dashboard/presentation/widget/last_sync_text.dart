import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:flutter/material.dart';

class LastSyncText extends StatelessWidget {
  const LastSyncText({
    required this.sync,
    super.key,
  });

  final DateTime sync;

  String _formatMessageReceivedTime(DateTime messageTime) {
    final now = DateTime.now();
    final difference = now.difference(messageTime);

    if (difference.inSeconds == 0) {
      return S.current.syncNow;
    }
    if (difference.inSeconds < 60) {
      return S.current.syncSecondsAgo(difference.inSeconds);
    }
    if (difference.inMinutes < 60) {
      return S.current.syncMinutesAgo(difference.inMinutes);
    }
    if (difference.inHours < 24) {
      return S.current.syncHoursAgo(difference.inHours);
    }
    return S.current.syncDaysAgo(difference.inDays);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          S.current.syncLabel,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        Text(_formatMessageReceivedTime(sync), style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
