import 'dart:convert';

extension NullableStringExtension on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
}

extension StringExtension on String {
  // convert blockchain quantity to double, e.g. "1.0000 SEEDS"
  // This parses a the value of type "Asset" and returns it as double
  double get quantityAsDouble {
    final List<String> parts = split(' ');
    return double.parse(parts[0]);
  }

  String get toMarkdown {
    late List<dynamic> data;
    try {
      data = jsonDecode(this);
    } catch (e) {
      throw FormatException('Invalid JSON string: $e');
    }

    final StringBuffer output = StringBuffer();
    int orderedListCount = 0;
    bool previousWasOrdered = false;

    for (int i = 0; i < data.length; i++) {
      final element = data[i];
      if (element['insert'] == null) continue;

      String text = element['insert'].trim();
      final Map<String, dynamic>? attributes = element['attributes'];

      if (attributes != null) {
        if (attributes['italic'] == true) {
          text = '_${text}_';
        }
        if (attributes['bold'] == true) {
          text = '**$text**';
        }
        if (attributes.containsKey('link')) {
          final String link = attributes['link'];
          text = '**[$text]($link)**';
        }
      }

      if (i + 1 < data.length && data[i + 1]['insert'] == '\n' && data[i + 1]['attributes'] != null) {
        final Map<String, dynamic> nextAttributes = data[i + 1]['attributes'];

        if (nextAttributes['list'] == 'bullet') {
          text = '* $text';
          previousWasOrdered = false;
        } else if (nextAttributes['list'] == 'ordered') {
          if (!previousWasOrdered) {
            orderedListCount = 1;
          } else {
            orderedListCount++;
          }
          text = '$orderedListCount. $text';
          previousWasOrdered = true;
        } else if (nextAttributes['blockquote'] == true) {
          text = '> $text';
        }

        i++;
      } else {
        previousWasOrdered = false;
      }

      output.write('$text\n');
    }

    return output.toString();
  }
}