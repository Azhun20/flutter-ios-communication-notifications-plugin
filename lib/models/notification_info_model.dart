// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:typed_data';

class NotificationInfo {
  final String senderName;
  final Uint8List imageBytes;
  final String content;
  final String value;
  final String? threadIdentifier;
  final Function(String payload)? onPressed;
  NotificationInfo({
    required this.senderName,
    required this.imageBytes,
    required this.content,
    required this.value,
    this.threadIdentifier,
    this.onPressed,
  });

  NotificationInfo copyWith({
    String? senderName,
    Uint8List? imageBytes,
    String? content,
    String? value,
    String? threadIdentifier,
    Function(String payload)? onPressed,
  }) {
    return NotificationInfo(
      senderName: senderName ?? this.senderName,
      imageBytes: imageBytes ?? this.imageBytes,
      content: content ?? this.content,
      value: value ?? this.value,
      threadIdentifier: threadIdentifier ?? this.threadIdentifier,
      onPressed: onPressed ?? this.onPressed,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'senderName': senderName,
      'imageBytes': imageBytes,
      'content': content,
      'value': value,
      'threadIdentifier': threadIdentifier,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'NotificationInfo(senderName: $senderName, imageBytes: $imageBytes, content: $content, value: $value, threadIdentifier: $threadIdentifier, onPressed: $onPressed)';
  }

  @override
  bool operator ==(covariant NotificationInfo other) {
    if (identical(this, other)) return true;

    return other.senderName == senderName &&
        other.imageBytes == imageBytes &&
        other.content == content &&
        other.value == value &&
        other.threadIdentifier == threadIdentifier &&
        other.onPressed == onPressed;
  }

  @override
  int get hashCode {
    return senderName.hashCode ^
        imageBytes.hashCode ^
        content.hashCode ^
        value.hashCode ^
        threadIdentifier.hashCode ^
        onPressed.hashCode;
  }
}
